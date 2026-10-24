import 'package:schemantic/schemantic.dart';
import '../entities/schema_entity.dart';
import '../json_ld/json_ld_engine.dart';

class SchemanticAdapter {
  static SchemanticType<SchemaEntity> schemaEntitySchema({
    Map<String, Object?>? customJsonSchema,
  }) {
    return SchemanticType.from<SchemaEntity>(
      jsonSchema: customJsonSchema ??
          {
            'type': 'object',
            'properties': {
              '@context': {'type': 'string', 'default': 'https://schema.org'},
              '@type': {'type': 'string'},
              '@id': {'type': 'string'},
            },
            'required': ['@type'],
          },
      parse: (json) {
        if (json is Map<String, dynamic>) {
          return JsonLdEngine.parseJsonLd(json);
        }
        throw FormatException('Invalid JSON map for SchemaEntity');
      },
      serialize: (entity) => JsonLdEngine.toJsonLd(entity),
    );
  }

  static SchemanticType<T> create<T>({
    required Map<String, Object?> jsonSchema,
    required T Function(Map<String, dynamic> json) fromJson,
    required Map<String, dynamic> Function(T instance) toJson,
  }) {
    return SchemanticType.from<T>(
      jsonSchema: jsonSchema,
      parse: (json) {
        if (json is Map<String, dynamic>) {
          return fromJson(json);
        }
        throw FormatException('Invalid JSON map');
      },
      serialize: (instance) => toJson(instance),
    );
  }
}
