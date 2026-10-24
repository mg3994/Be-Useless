import 'package:freezed_annotation/freezed_annotation.dart';

part 'schema_term.freezed.dart';
part 'schema_term.g.dart';

@freezed
abstract class SchemaType with _$SchemaType {
  const factory SchemaType({
    required String id,
    required String name,
    required String description,
    @Default([]) List<String> parents,
    @Default([]) List<String> properties,
    @Default(false) bool isEnumeration,
    @Default([]) List<String> enumerationMembers,
    String? supersededBy,
    @Default(false) bool isDeprecated,
  }) = _SchemaType;

  factory SchemaType.fromJson(Map<String, dynamic> json) =>
      _$SchemaTypeFromJson(json);
}

@freezed
abstract class SchemaProperty with _$SchemaProperty {
  const factory SchemaProperty({
    required String id,
    required String name,
    required String description,
    @Default([]) List<String> domainIncludes,
    @Default([]) List<String> rangeIncludes,
    @Default([]) List<String> subPropertyOf,
    String? inverseOf,
    String? supersededBy,
    @Default(false) bool isDeprecated,
  }) = _SchemaProperty;

  factory SchemaProperty.fromJson(Map<String, dynamic> json) =>
      _$SchemaPropertyFromJson(json);
}

@freezed
abstract class SchemaEnumerationMember with _$SchemaEnumerationMember {
  const factory SchemaEnumerationMember({
    required String id,
    required String name,
    required String description,
    required String enumerationType,
  }) = _SchemaEnumerationMember;

  factory SchemaEnumerationMember.fromJson(Map<String, dynamic> json) =>
      _$SchemaEnumerationMemberFromJson(json);
}
