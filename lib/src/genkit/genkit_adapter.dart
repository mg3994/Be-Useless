import 'package:schemantic/schemantic.dart';

class GenkitAdapter {
  static Map<String, dynamic> toGenkitSchema<T>(SchemanticType<T> schemanticType) {
    return {
      'type': 'object',
      ...schemanticType.jsonSchema(),
    };
  }

  static Map<String, dynamic> createProjectionSchema({
    required String typeName,
    required Map<String, String> propertyTypes,
    List<String> requiredProperties = const [],
    String description = '',
  }) {
    final properties = <String, dynamic>{
      '@type': {
        'type': 'string',
        'default': typeName,
      },
    };

    for (final entry in propertyTypes.entries) {
      properties[entry.key] = {'type': entry.value};
    }

    return {
      'type': 'object',
      'description': description,
      'properties': properties,
      if (requiredProperties.isNotEmpty) 'required': requiredProperties,
    };
  }
}
