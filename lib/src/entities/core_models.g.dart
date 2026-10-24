// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Person _$PersonFromJson(Map<String, dynamic> json) => _Person(
  context: json['@context'] as String? ?? 'https://schema.org',
  type: json['@type'] as String? ?? 'Person',
  id: json['@id'] as String?,
  name: json['name'] as String?,
  givenName: json['givenName'] as String?,
  familyName: json['familyName'] as String?,
  email: json['email'] as String?,
  telephone: json['telephone'] as String?,
  jobTitle: json['jobTitle'] as String?,
  url: json['url'] as String?,
  address: json['address'] == null
      ? null
      : PostalAddress.fromJson(json['address'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PersonToJson(_Person instance) => <String, dynamic>{
  '@context': instance.context,
  '@type': instance.type,
  '@id': instance.id,
  'name': instance.name,
  'givenName': instance.givenName,
  'familyName': instance.familyName,
  'email': instance.email,
  'telephone': instance.telephone,
  'jobTitle': instance.jobTitle,
  'url': instance.url,
  'address': instance.address,
};

_Organization _$OrganizationFromJson(Map<String, dynamic> json) =>
    _Organization(
      context: json['@context'] as String? ?? 'https://schema.org',
      type: json['@type'] as String? ?? 'Organization',
      id: json['@id'] as String?,
      name: json['name'] as String?,
      legalName: json['legalName'] as String?,
      url: json['url'] as String?,
      email: json['email'] as String?,
      telephone: json['telephone'] as String?,
      address: json['address'] == null
          ? null
          : PostalAddress.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrganizationToJson(_Organization instance) =>
    <String, dynamic>{
      '@context': instance.context,
      '@type': instance.type,
      '@id': instance.id,
      'name': instance.name,
      'legalName': instance.legalName,
      'url': instance.url,
      'email': instance.email,
      'telephone': instance.telephone,
      'address': instance.address,
    };

_PostalAddress _$PostalAddressFromJson(Map<String, dynamic> json) =>
    _PostalAddress(
      context: json['@context'] as String? ?? 'https://schema.org',
      type: json['@type'] as String? ?? 'PostalAddress',
      id: json['@id'] as String?,
      streetAddress: json['streetAddress'] as String?,
      addressLocality: json['addressLocality'] as String?,
      addressRegion: json['addressRegion'] as String?,
      postalCode: json['postalCode'] as String?,
      addressCountry: json['addressCountry'] as String?,
    );

Map<String, dynamic> _$PostalAddressToJson(_PostalAddress instance) =>
    <String, dynamic>{
      '@context': instance.context,
      '@type': instance.type,
      '@id': instance.id,
      'streetAddress': instance.streetAddress,
      'addressLocality': instance.addressLocality,
      'addressRegion': instance.addressRegion,
      'postalCode': instance.postalCode,
      'addressCountry': instance.addressCountry,
    };

_Thing _$ThingFromJson(Map<String, dynamic> json) => _Thing(
  context: json['@context'] as String? ?? 'https://schema.org',
  type: json['@type'] as String? ?? 'Thing',
  id: json['@id'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  url: json['url'] as String?,
  image: json['image'] as String?,
);

Map<String, dynamic> _$ThingToJson(_Thing instance) => <String, dynamic>{
  '@context': instance.context,
  '@type': instance.type,
  '@id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'url': instance.url,
  'image': instance.image,
};

_Place _$PlaceFromJson(Map<String, dynamic> json) => _Place(
  context: json['@context'] as String? ?? 'https://schema.org',
  type: json['@type'] as String? ?? 'Place',
  id: json['@id'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  address: json['address'] == null
      ? null
      : PostalAddress.fromJson(json['address'] as Map<String, dynamic>),
  geo: json['geo'] == null
      ? null
      : GeoCoordinates.fromJson(json['geo'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PlaceToJson(_Place instance) => <String, dynamic>{
  '@context': instance.context,
  '@type': instance.type,
  '@id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'address': instance.address,
  'geo': instance.geo,
};

_GeoCoordinates _$GeoCoordinatesFromJson(Map<String, dynamic> json) =>
    _GeoCoordinates(
      context: json['@context'] as String? ?? 'https://schema.org',
      type: json['@type'] as String? ?? 'GeoCoordinates',
      id: json['@id'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      elevation: (json['elevation'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$GeoCoordinatesToJson(_GeoCoordinates instance) =>
    <String, dynamic>{
      '@context': instance.context,
      '@type': instance.type,
      '@id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'elevation': instance.elevation,
    };

_Event _$EventFromJson(Map<String, dynamic> json) => _Event(
  context: json['@context'] as String? ?? 'https://schema.org',
  type: json['@type'] as String? ?? 'Event',
  id: json['@id'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  startDate: json['startDate'] as String?,
  endDate: json['endDate'] as String?,
  location: json['location'] == null
      ? null
      : Place.fromJson(json['location'] as Map<String, dynamic>),
  organizer: json['organizer'] == null
      ? null
      : Person.fromJson(json['organizer'] as Map<String, dynamic>),
);

Map<String, dynamic> _$EventToJson(_Event instance) => <String, dynamic>{
  '@context': instance.context,
  '@type': instance.type,
  '@id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'startDate': instance.startDate,
  'endDate': instance.endDate,
  'location': instance.location,
  'organizer': instance.organizer,
};

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  context: json['@context'] as String? ?? 'https://schema.org',
  type: json['@type'] as String? ?? 'Product',
  id: json['@id'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  sku: json['sku'] as String?,
  brand: json['brand'] as String?,
  offers: json['offers'] == null
      ? null
      : Offer.fromJson(json['offers'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  '@context': instance.context,
  '@type': instance.type,
  '@id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'sku': instance.sku,
  'brand': instance.brand,
  'offers': instance.offers,
};

_Offer _$OfferFromJson(Map<String, dynamic> json) => _Offer(
  context: json['@context'] as String? ?? 'https://schema.org',
  type: json['@type'] as String? ?? 'Offer',
  id: json['@id'] as String?,
  price: (json['price'] as num?)?.toDouble(),
  priceCurrency: json['priceCurrency'] as String?,
  availability: json['availability'] as String?,
  validFrom: json['validFrom'] as String?,
);

Map<String, dynamic> _$OfferToJson(_Offer instance) => <String, dynamic>{
  '@context': instance.context,
  '@type': instance.type,
  '@id': instance.id,
  'price': instance.price,
  'priceCurrency': instance.priceCurrency,
  'availability': instance.availability,
  'validFrom': instance.validFrom,
};
