import 'package:freezed_annotation/freezed_annotation.dart';

part 'schema_entity.freezed.dart';

@freezed
abstract class SchemaEntity with _$SchemaEntity {
  const factory SchemaEntity({
    @JsonKey(name: '@context') @Default('https://schema.org') String context,
    @JsonKey(name: '@type') required String type,
    @JsonKey(name: '@id') String? id,
    @Default({}) Map<String, dynamic> properties,
  }) = _SchemaEntity;

  factory SchemaEntity.fromJson(Map<String, dynamic> json) {
    final context = json['@context']?.toString() ?? 'https://schema.org';
    final type = json['@type']?.toString() ?? 'Thing';
    final id = json['@id']?.toString();

    final props = Map<String, dynamic>.from(json)
      ..remove('@context')
      ..remove('@type')
      ..remove('@id');

    return SchemaEntity(
      context: context,
      type: type,
      id: id,
      properties: props,
    );
  }
}
