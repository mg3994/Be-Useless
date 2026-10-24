import '../models/schema_term.dart';
import 'generated_schema_data.g.dart';

class SchemaRegistry {
  static final SchemaRegistry instance = SchemaRegistry._();

  final Map<String, SchemaType> _types = {};
  final Map<String, SchemaProperty> _properties = {};

  SchemaRegistry._() {
    _init();
  }

  void _init() {
    for (final entry in GeneratedSchemaData.rawTypes.entries) {
      _types[entry.key] = SchemaType.fromJson(entry.value);
    }
    for (final entry in GeneratedSchemaData.rawProperties.entries) {
      _properties[entry.key] = SchemaProperty.fromJson(entry.value);
    }
  }

  SchemaType? getType(String id) {
    final cleanId = _cleanId(id);
    return _types[cleanId];
  }

  SchemaProperty? getProperty(String id) {
    final cleanId = _cleanId(id);
    return _properties[cleanId];
  }

  bool hasType(String typeId) => getType(typeId) != null;

  bool hasProperty(String propertyId) => getProperty(propertyId) != null;

  List<SchemaType> get allTypes => _types.values.toList();

  List<SchemaProperty> get allProperties => _properties.values.toList();

  List<SchemaType> getParents(String typeId) {
    final type = getType(typeId);
    if (type == null) return [];
    return type.parents
        .map((p) => getType(p))
        .whereType<SchemaType>()
        .toList();
  }

  List<SchemaType> getChildren(String typeId) {
    final targetId = _cleanId(typeId);
    return _types.values
        .where((t) => t.parents.map(_cleanId).contains(targetId))
        .toList();
  }

  Set<SchemaType> getAncestors(String typeId) {
    final ancestors = <SchemaType>{};
    void recurse(String id) {
      final parents = getParents(id);
      for (final parent in parents) {
        if (ancestors.add(parent)) {
          recurse(parent.id);
        }
      }
    }

    recurse(typeId);
    return ancestors;
  }

  List<SchemaProperty> getPropertiesForType(String typeId) {
    final targetId = _cleanId(typeId);
    final targetType = getType(targetId);
    if (targetType == null) return [];

    final applicableTypeIds = <String>{
      targetId,
      ...getAncestors(targetId).map((t) => t.id),
    };

    final result = <String, SchemaProperty>{};
    for (final prop in _properties.values) {
      for (final domain in prop.domainIncludes) {
        if (applicableTypeIds.contains(_cleanId(domain))) {
          result[prop.id] = prop;
          break;
        }
      }
    }
    return result.values.toList();
  }

  bool isSubtypeOf(String subTypeId, String superTypeId) {
    final cleanSub = _cleanId(subTypeId);
    final cleanSuper = _cleanId(superTypeId);
    if (cleanSub == cleanSuper) return true;
    final ancestors = getAncestors(cleanSub);
    return ancestors.any((a) => a.id == cleanSuper);
  }

  String _cleanId(String id) {
    if (id.startsWith('schema:')) return id.substring(7);
    if (id.startsWith('https://schema.org/')) return id.substring(19);
    if (id.startsWith('http://schema.org/')) return id.substring(18);
    return id;
  }
}
