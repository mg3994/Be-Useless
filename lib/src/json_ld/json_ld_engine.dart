import '../entities/schema_entity.dart';

class JsonLdEngine {
  static const String canonicalContext = 'https://schema.org';

  static Map<String, dynamic> toJsonLd(dynamic item) {
    if (item is SchemaEntity) {
      final map = <String, dynamic>{
        '@context': item.context,
        '@type': item.type,
      };
      if (item.id != null) map['@id'] = item.id;
      for (final entry in item.properties.entries) {
        map[entry.key] = _encodeValue(entry.value);
      }
      return map;
    } else if (item is Map<String, dynamic>) {
      final map = <String, dynamic>{};
      if (!item.containsKey('@context')) {
        map['@context'] = canonicalContext;
      }
      for (final entry in item.entries) {
        map[entry.key] = _encodeValue(entry.value);
      }
      return map;
    } else if (item != null) {
      try {
        final json = (item as dynamic).toJson();
        if (json is Map<String, dynamic>) {
          return toJsonLd(json);
        }
      } catch (_) {}
    }
    throw ArgumentError('Unsupported item for JSON-LD serialization: $item');
  }

  static SchemaEntity parseJsonLd(Map<String, dynamic> jsonLd) {
    final context = jsonLd['@context']?.toString() ?? canonicalContext;
    final type = jsonLd['@type']?.toString() ?? 'Thing';
    final id = jsonLd['@id']?.toString();

    final props = <String, dynamic>{};
    for (final entry in jsonLd.entries) {
      if (entry.key == '@context' || entry.key == '@type' || entry.key == '@id') {
        continue;
      }
      props[entry.key] = _decodeValue(entry.value);
    }

    return SchemaEntity(
      context: context,
      type: type,
      id: id,
      properties: props,
    );
  }

  static List<SchemaEntity> parseGraph(Map<String, dynamic> jsonLdGraph) {
    if (!jsonLdGraph.containsKey('@graph')) {
      return [parseJsonLd(jsonLdGraph)];
    }
    final graph = jsonLdGraph['@graph'];
    if (graph is! List) return [];

    final context = jsonLdGraph['@context']?.toString() ?? canonicalContext;
    final results = <SchemaEntity>[];

    for (final node in graph) {
      if (node is Map<String, dynamic>) {
        final fullNode = Map<String, dynamic>.from(node);
        if (!fullNode.containsKey('@context')) {
          fullNode['@context'] = context;
        }
        results.add(parseJsonLd(fullNode));
      }
    }
    return results;
  }

  static dynamic _encodeValue(dynamic val) {
    if (val is SchemaEntity) {
      return toJsonLd(val);
    } else if (val is List) {
      return val.map(_encodeValue).toList();
    } else if (val is Map<String, dynamic>) {
      return val.map((k, v) => MapEntry(k, _encodeValue(v)));
    } else if (val != null) {
      try {
        final json = (val as dynamic).toJson();
        return _encodeValue(json);
      } catch (_) {}
    }
    return val;
  }

  static dynamic _decodeValue(dynamic val) {
    if (val is Map<String, dynamic>) {
      if (val.containsKey('@type') || val.containsKey('@id')) {
        return parseJsonLd(val);
      }
      if (val.containsKey('@value')) {
        return val['@value'];
      }
      return val.map((k, v) => MapEntry(k, _decodeValue(v)));
    } else if (val is List) {
      return val.map(_decodeValue).toList();
    }
    return val;
  }
}
