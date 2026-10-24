// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema_term.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SchemaType _$SchemaTypeFromJson(Map<String, dynamic> json) => _SchemaType(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  parents:
      (json['parents'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  properties:
      (json['properties'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  isEnumeration: json['isEnumeration'] as bool? ?? false,
  enumerationMembers:
      (json['enumerationMembers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  supersededBy: json['supersededBy'] as String?,
  isDeprecated: json['isDeprecated'] as bool? ?? false,
);

Map<String, dynamic> _$SchemaTypeToJson(_SchemaType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'parents': instance.parents,
      'properties': instance.properties,
      'isEnumeration': instance.isEnumeration,
      'enumerationMembers': instance.enumerationMembers,
      'supersededBy': instance.supersededBy,
      'isDeprecated': instance.isDeprecated,
    };

_SchemaProperty _$SchemaPropertyFromJson(Map<String, dynamic> json) =>
    _SchemaProperty(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      domainIncludes:
          (json['domainIncludes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      rangeIncludes:
          (json['rangeIncludes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      subPropertyOf:
          (json['subPropertyOf'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      inverseOf: json['inverseOf'] as String?,
      supersededBy: json['supersededBy'] as String?,
      isDeprecated: json['isDeprecated'] as bool? ?? false,
    );

Map<String, dynamic> _$SchemaPropertyToJson(_SchemaProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'domainIncludes': instance.domainIncludes,
      'rangeIncludes': instance.rangeIncludes,
      'subPropertyOf': instance.subPropertyOf,
      'inverseOf': instance.inverseOf,
      'supersededBy': instance.supersededBy,
      'isDeprecated': instance.isDeprecated,
    };

_SchemaEnumerationMember _$SchemaEnumerationMemberFromJson(
  Map<String, dynamic> json,
) => _SchemaEnumerationMember(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  enumerationType: json['enumerationType'] as String,
);

Map<String, dynamic> _$SchemaEnumerationMemberToJson(
  _SchemaEnumerationMember instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'enumerationType': instance.enumerationType,
};
