import 'package:freezed_annotation/freezed_annotation.dart';

part 'core_models.freezed.dart';
part 'core_models.g.dart';

@freezed
abstract class Person with _$Person {
  const factory Person({
    @JsonKey(name: '@context') @Default('https://schema.org') String context,
    @JsonKey(name: '@type') @Default('Person') String type,
    @JsonKey(name: '@id') String? id,
    String? name,
    String? givenName,
    String? familyName,
    String? email,
    String? telephone,
    String? jobTitle,
    String? url,
    PostalAddress? address,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}

@freezed
abstract class Organization with _$Organization {
  const factory Organization({
    @JsonKey(name: '@context') @Default('https://schema.org') String context,
    @JsonKey(name: '@type') @Default('Organization') String type,
    @JsonKey(name: '@id') String? id,
    String? name,
    String? legalName,
    String? url,
    String? email,
    String? telephone,
    PostalAddress? address,
  }) = _Organization;

  factory Organization.fromJson(Map<String, dynamic> json) =>
      _$OrganizationFromJson(json);
}

@freezed
abstract class PostalAddress with _$PostalAddress {
  const factory PostalAddress({
    @JsonKey(name: '@context') @Default('https://schema.org') String context,
    @JsonKey(name: '@type') @Default('PostalAddress') String type,
    @JsonKey(name: '@id') String? id,
    String? streetAddress,
    String? addressLocality,
    String? addressRegion,
    String? postalCode,
    String? addressCountry,
  }) = _PostalAddress;

  factory PostalAddress.fromJson(Map<String, dynamic> json) =>
      _$PostalAddressFromJson(json);
}

@freezed
abstract class Thing with _$Thing {
  const factory Thing({
    @JsonKey(name: '@context') @Default('https://schema.org') String context,
    @JsonKey(name: '@type') @Default('Thing') String type,
    @JsonKey(name: '@id') String? id,
    String? name,
    String? description,
    String? url,
    String? image,
  }) = _Thing;

  factory Thing.fromJson(Map<String, dynamic> json) => _$ThingFromJson(json);
}

@freezed
abstract class Place with _$Place {
  const factory Place({
    @JsonKey(name: '@context') @Default('https://schema.org') String context,
    @JsonKey(name: '@type') @Default('Place') String type,
    @JsonKey(name: '@id') String? id,
    String? name,
    String? description,
    PostalAddress? address,
    GeoCoordinates? geo,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}

@freezed
abstract class GeoCoordinates with _$GeoCoordinates {
  const factory GeoCoordinates({
    @JsonKey(name: '@context') @Default('https://schema.org') String context,
    @JsonKey(name: '@type') @Default('GeoCoordinates') String type,
    @JsonKey(name: '@id') String? id,
    double? latitude,
    double? longitude,
    double? elevation,
  }) = _GeoCoordinates;

  factory GeoCoordinates.fromJson(Map<String, dynamic> json) =>
      _$GeoCoordinatesFromJson(json);
}

@freezed
abstract class Event with _$Event {
  const factory Event({
    @JsonKey(name: '@context') @Default('https://schema.org') String context,
    @JsonKey(name: '@type') @Default('Event') String type,
    @JsonKey(name: '@id') String? id,
    String? name,
    String? description,
    String? startDate,
    String? endDate,
    Place? location,
    Person? organizer,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}

@freezed
abstract class Product with _$Product {
  const factory Product({
    @JsonKey(name: '@context') @Default('https://schema.org') String context,
    @JsonKey(name: '@type') @Default('Product') String type,
    @JsonKey(name: '@id') String? id,
    String? name,
    String? description,
    String? sku,
    String? brand,
    Offer? offers,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
abstract class Offer with _$Offer {
  const factory Offer({
    @JsonKey(name: '@context') @Default('https://schema.org') String context,
    @JsonKey(name: '@type') @Default('Offer') String type,
    @JsonKey(name: '@id') String? id,
    double? price,
    String? priceCurrency,
    String? availability,
    String? validFrom,
  }) = _Offer;

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);
}
