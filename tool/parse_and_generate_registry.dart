import 'dart:convert';
import 'dart:io';

String _extractString(dynamic val) {
  if (val == null) return '';
  if (val is String) return val;
  if (val is Map<String, dynamic>) {
    if (val.containsKey('@value')) return val['@value'].toString();
    if (val.containsKey('@id')) return val['@id'].toString();
  }
  if (val is List && val.isNotEmpty) {
    return _extractString(val.first);
  }
  return val.toString();
}

List<String> _extractIdList(dynamic val) {
  if (val == null) return [];
  final List<String> result = [];
  if (val is String) {
    result.add(_cleanId(val));
  } else if (val is Map<String, dynamic>) {
    if (val.containsKey('@id')) {
      result.add(_cleanId(val['@id'].toString()));
    }
  } else if (val is List) {
    for (final item in val) {
      result.addAll(_extractIdList(item));
    }
  }
  return result;
}

String _cleanId(String id) {
  if (id.startsWith('schema:')) {
    return id.substring(7);
  }
  if (id.startsWith('https://schema.org/')) {
    return id.substring(19);
  }
  if (id.startsWith('http://schema.org/')) {
    return id.substring(18);
  }
  return id;
}

void main() async {
  final jsonFile = File('tool/schemaorg-current-https.jsonld');
  if (!jsonFile.existsSync()) {
    print('Downloading schemaorg-current-https.jsonld...');
    final client = HttpClient();
    final req = await client.getUrl(Uri.parse('https://schema.org/version/latest/schemaorg-current-https.jsonld'));
    final res = await req.close();
    final content = await res.transform(utf8.decoder).join();
    await jsonFile.writeAsString(content);
  }

  final json = jsonDecode(await jsonFile.readAsString()) as Map<String, dynamic>;
  final graph = json['@graph'] as List<dynamic>;

  final Map<String, Map<String, dynamic>> rawClasses = {};
  final Map<String, Map<String, dynamic>> rawProperties = {};
  final Map<String, Map<String, dynamic>> rawEnumMembers = {};

  for (final rawItem in graph) {
    if (rawItem is! Map<String, dynamic>) continue;
    final idRaw = rawItem['@id']?.toString() ?? '';
    if (idRaw.isEmpty) continue;
    final id = _cleanId(idRaw);

    final rawType = rawItem['@type'];
    List<String> types = [];
    if (rawType is String) {
      types.add(rawType);
    } else if (rawType is List) {
      types.addAll(rawType.map((e) => e.toString()));
    }

    if (types.contains('rdfs:Class')) {
      rawClasses[id] = rawItem;
    } else if (types.contains('rdf:Property')) {
      rawProperties[id] = rawItem;
    } else {
      rawEnumMembers[id] = rawItem;
    }
  }

  print('Parsed ${rawClasses.length} classes, ${rawProperties.length} properties, ${rawEnumMembers.length} enum members.');

  final Map<String, Map<String, dynamic>> typesOutput = {};
  for (final entry in rawClasses.entries) {
    final id = entry.key;
    final item = entry.value;
    final name = _cleanId(_extractString(item['rdfs:label']).isEmpty ? id : _extractString(item['rdfs:label']));
    final description = _extractString(item['rdfs:comment']);
    final parents = _extractIdList(item['rdfs:subClassOf']);
    final supersededByRaw = item['schema:supersededBy'];
    final supersededBy = supersededByRaw != null ? _cleanId(_extractString(supersededByRaw)) : null;

    typesOutput[id] = {
      'id': id,
      'name': name,
      'description': description,
      'parents': parents,
      'properties': <String>[],
      'isEnumeration': parents.contains('Enumeration'),
      'enumerationMembers': <String>[],
      'supersededBy': supersededBy,
      'isDeprecated': supersededBy != null,
    };
  }

  for (final entry in rawEnumMembers.entries) {
    final id = entry.key;
    final item = entry.value;
    final rawTypes = item['@type'];
    final enumTypes = _extractIdList(rawTypes);

    for (final enumType in enumTypes) {
      if (typesOutput.containsKey(enumType)) {
        typesOutput[enumType]!['isEnumeration'] = true;
        (typesOutput[enumType]!['enumerationMembers'] as List<String>).add(id);
      }
    }
  }

  final Map<String, Map<String, dynamic>> propertiesOutput = {};
  for (final entry in rawProperties.entries) {
    final id = entry.key;
    final item = entry.value;
    final name = _cleanId(_extractString(item['rdfs:label']).isEmpty ? id : _extractString(item['rdfs:label']));
    final description = _extractString(item['rdfs:comment']);
    final domainIncludes = _extractIdList(item['schema:domainIncludes']);
    final rangeIncludes = _extractIdList(item['schema:rangeIncludes']);
    final subPropertyOf = _extractIdList(item['rdfs:subPropertyOf']);
    final inverseOfRaw = item['schema:inverseOf'];
    final inverseOf = inverseOfRaw != null ? _cleanId(_extractString(inverseOfRaw)) : null;
    final supersededByRaw = item['schema:supersededBy'];
    final supersededBy = supersededByRaw != null ? _cleanId(_extractString(supersededByRaw)) : null;

    propertiesOutput[id] = {
      'id': id,
      'name': name,
      'description': description,
      'domainIncludes': domainIncludes,
      'rangeIncludes': rangeIncludes,
      'subPropertyOf': subPropertyOf,
      'inverseOf': inverseOf,
      'supersededBy': supersededBy,
      'isDeprecated': supersededBy != null,
    };

    for (final domainType in domainIncludes) {
      if (typesOutput.containsKey(domainType)) {
        (typesOutput[domainType]!['properties'] as List<String>).add(id);
      }
    }
  }

  final outputFile = File('lib/src/vocabulary/registry/generated_schema_data.g.dart');
  await outputFile.parent.create(recursive: true);

  final jsonTypes = jsonEncode(typesOutput);
  final jsonProps = jsonEncode(propertiesOutput);

  final sb = StringBuffer();
  sb.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND');
  sb.writeln("import 'dart:convert';");
  sb.writeln();
  sb.writeln('class GeneratedSchemaData {');
  sb.writeln('  static final Map<String, Map<String, dynamic>> rawTypes =');
  sb.writeln('      (jsonDecode(_rawTypesJson) as Map<String, dynamic>).map(');
  sb.writeln('        (k, v) => MapEntry(k, v as Map<String, dynamic>),');
  sb.writeln('      );');
  sb.writeln();
  sb.writeln('  static final Map<String, Map<String, dynamic>> rawProperties =');
  sb.writeln('      (jsonDecode(_rawPropertiesJson) as Map<String, dynamic>).map(');
  sb.writeln('        (k, v) => MapEntry(k, v as Map<String, dynamic>),');
  sb.writeln('      );');
  sb.writeln();
  sb.writeln('  static const String _rawTypesJson = r\'\'\'$jsonTypes\'\'\';');
  sb.writeln('  static const String _rawPropertiesJson = r\'\'\'$jsonProps\'\'\';');
  sb.writeln('}');

  await outputFile.writeAsString(sb.toString());
  print('Wrote generated schema data to ${outputFile.path} (${outputFile.lengthSync()} bytes).');
}
