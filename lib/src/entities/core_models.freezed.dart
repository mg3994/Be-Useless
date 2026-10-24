// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'core_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Person {

@JsonKey(name: '@context') String get context;@JsonKey(name: '@type') String get type;@JsonKey(name: '@id') String? get id; String? get name; String? get givenName; String? get familyName; String? get email; String? get telephone; String? get jobTitle; String? get url; PostalAddress? get address;
/// Create a copy of Person
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonCopyWith<Person> get copyWith => _$PersonCopyWithImpl<Person>(this as Person, _$identity);

  /// Serializes this Person to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Person&&(identical(other.context, context) || other.context == context)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.givenName, givenName) || other.givenName == givenName)&&(identical(other.familyName, familyName) || other.familyName == familyName)&&(identical(other.email, email) || other.email == email)&&(identical(other.telephone, telephone) || other.telephone == telephone)&&(identical(other.jobTitle, jobTitle) || other.jobTitle == jobTitle)&&(identical(other.url, url) || other.url == url)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,context,type,id,name,givenName,familyName,email,telephone,jobTitle,url,address);

@override
String toString() {
  return 'Person(context: $context, type: $type, id: $id, name: $name, givenName: $givenName, familyName: $familyName, email: $email, telephone: $telephone, jobTitle: $jobTitle, url: $url, address: $address)';
}


}

/// @nodoc
abstract mixin class $PersonCopyWith<$Res>  {
  factory $PersonCopyWith(Person value, $Res Function(Person) _then) = _$PersonCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '@context') String context,@JsonKey(name: '@type') String type,@JsonKey(name: '@id') String? id, String? name, String? givenName, String? familyName, String? email, String? telephone, String? jobTitle, String? url, PostalAddress? address
});


$PostalAddressCopyWith<$Res>? get address;

}
/// @nodoc
class _$PersonCopyWithImpl<$Res>
    implements $PersonCopyWith<$Res> {
  _$PersonCopyWithImpl(this._self, this._then);

  final Person _self;
  final $Res Function(Person) _then;

/// Create a copy of Person
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? context = null,Object? type = null,Object? id = freezed,Object? name = freezed,Object? givenName = freezed,Object? familyName = freezed,Object? email = freezed,Object? telephone = freezed,Object? jobTitle = freezed,Object? url = freezed,Object? address = freezed,}) {
  return _then(_self.copyWith(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,givenName: freezed == givenName ? _self.givenName : givenName // ignore: cast_nullable_to_non_nullable
as String?,familyName: freezed == familyName ? _self.familyName : familyName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,telephone: freezed == telephone ? _self.telephone : telephone // ignore: cast_nullable_to_non_nullable
as String?,jobTitle: freezed == jobTitle ? _self.jobTitle : jobTitle // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as PostalAddress?,
  ));
}
/// Create a copy of Person
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostalAddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $PostalAddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// Adds pattern-matching-related methods to [Person].
extension PersonPatterns on Person {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Person value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Person() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Person value)  $default,){
final _that = this;
switch (_that) {
case _Person():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Person value)?  $default,){
final _that = this;
switch (_that) {
case _Person() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  String? name,  String? givenName,  String? familyName,  String? email,  String? telephone,  String? jobTitle,  String? url,  PostalAddress? address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Person() when $default != null:
return $default(_that.context,_that.type,_that.id,_that.name,_that.givenName,_that.familyName,_that.email,_that.telephone,_that.jobTitle,_that.url,_that.address);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  String? name,  String? givenName,  String? familyName,  String? email,  String? telephone,  String? jobTitle,  String? url,  PostalAddress? address)  $default,) {final _that = this;
switch (_that) {
case _Person():
return $default(_that.context,_that.type,_that.id,_that.name,_that.givenName,_that.familyName,_that.email,_that.telephone,_that.jobTitle,_that.url,_that.address);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  String? name,  String? givenName,  String? familyName,  String? email,  String? telephone,  String? jobTitle,  String? url,  PostalAddress? address)?  $default,) {final _that = this;
switch (_that) {
case _Person() when $default != null:
return $default(_that.context,_that.type,_that.id,_that.name,_that.givenName,_that.familyName,_that.email,_that.telephone,_that.jobTitle,_that.url,_that.address);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Person implements Person {
  const _Person({@JsonKey(name: '@context') this.context = 'https://schema.org', @JsonKey(name: '@type') this.type = 'Person', @JsonKey(name: '@id') this.id, this.name, this.givenName, this.familyName, this.email, this.telephone, this.jobTitle, this.url, this.address});
  factory _Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

@override@JsonKey(name: '@context') final  String context;
@override@JsonKey(name: '@type') final  String type;
@override@JsonKey(name: '@id') final  String? id;
@override final  String? name;
@override final  String? givenName;
@override final  String? familyName;
@override final  String? email;
@override final  String? telephone;
@override final  String? jobTitle;
@override final  String? url;
@override final  PostalAddress? address;

/// Create a copy of Person
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonCopyWith<_Person> get copyWith => __$PersonCopyWithImpl<_Person>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PersonToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Person&&(identical(other.context, context) || other.context == context)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.givenName, givenName) || other.givenName == givenName)&&(identical(other.familyName, familyName) || other.familyName == familyName)&&(identical(other.email, email) || other.email == email)&&(identical(other.telephone, telephone) || other.telephone == telephone)&&(identical(other.jobTitle, jobTitle) || other.jobTitle == jobTitle)&&(identical(other.url, url) || other.url == url)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,context,type,id,name,givenName,familyName,email,telephone,jobTitle,url,address);

@override
String toString() {
  return 'Person(context: $context, type: $type, id: $id, name: $name, givenName: $givenName, familyName: $familyName, email: $email, telephone: $telephone, jobTitle: $jobTitle, url: $url, address: $address)';
}


}

/// @nodoc
abstract mixin class _$PersonCopyWith<$Res> implements $PersonCopyWith<$Res> {
  factory _$PersonCopyWith(_Person value, $Res Function(_Person) _then) = __$PersonCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '@context') String context,@JsonKey(name: '@type') String type,@JsonKey(name: '@id') String? id, String? name, String? givenName, String? familyName, String? email, String? telephone, String? jobTitle, String? url, PostalAddress? address
});


@override $PostalAddressCopyWith<$Res>? get address;

}
/// @nodoc
class __$PersonCopyWithImpl<$Res>
    implements _$PersonCopyWith<$Res> {
  __$PersonCopyWithImpl(this._self, this._then);

  final _Person _self;
  final $Res Function(_Person) _then;

/// Create a copy of Person
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? context = null,Object? type = null,Object? id = freezed,Object? name = freezed,Object? givenName = freezed,Object? familyName = freezed,Object? email = freezed,Object? telephone = freezed,Object? jobTitle = freezed,Object? url = freezed,Object? address = freezed,}) {
  return _then(_Person(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,givenName: freezed == givenName ? _self.givenName : givenName // ignore: cast_nullable_to_non_nullable
as String?,familyName: freezed == familyName ? _self.familyName : familyName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,telephone: freezed == telephone ? _self.telephone : telephone // ignore: cast_nullable_to_non_nullable
as String?,jobTitle: freezed == jobTitle ? _self.jobTitle : jobTitle // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as PostalAddress?,
  ));
}

/// Create a copy of Person
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostalAddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $PostalAddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// @nodoc
mixin _$Organization {

@JsonKey(name: '@context') String get context;@JsonKey(name: '@type') String get type;@JsonKey(name: '@id') String? get id; String? get name; String? get legalName; String? get url; String? get email; String? get telephone; PostalAddress? get address;
/// Create a copy of Organization
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrganizationCopyWith<Organization> get copyWith => _$OrganizationCopyWithImpl<Organization>(this as Organization, _$identity);

  /// Serializes this Organization to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Organization&&(identical(other.context, context) || other.context == context)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.legalName, legalName) || other.legalName == legalName)&&(identical(other.url, url) || other.url == url)&&(identical(other.email, email) || other.email == email)&&(identical(other.telephone, telephone) || other.telephone == telephone)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,context,type,id,name,legalName,url,email,telephone,address);

@override
String toString() {
  return 'Organization(context: $context, type: $type, id: $id, name: $name, legalName: $legalName, url: $url, email: $email, telephone: $telephone, address: $address)';
}


}

/// @nodoc
abstract mixin class $OrganizationCopyWith<$Res>  {
  factory $OrganizationCopyWith(Organization value, $Res Function(Organization) _then) = _$OrganizationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '@context') String context,@JsonKey(name: '@type') String type,@JsonKey(name: '@id') String? id, String? name, String? legalName, String? url, String? email, String? telephone, PostalAddress? address
});


$PostalAddressCopyWith<$Res>? get address;

}
/// @nodoc
class _$OrganizationCopyWithImpl<$Res>
    implements $OrganizationCopyWith<$Res> {
  _$OrganizationCopyWithImpl(this._self, this._then);

  final Organization _self;
  final $Res Function(Organization) _then;

/// Create a copy of Organization
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? context = null,Object? type = null,Object? id = freezed,Object? name = freezed,Object? legalName = freezed,Object? url = freezed,Object? email = freezed,Object? telephone = freezed,Object? address = freezed,}) {
  return _then(_self.copyWith(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,legalName: freezed == legalName ? _self.legalName : legalName // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,telephone: freezed == telephone ? _self.telephone : telephone // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as PostalAddress?,
  ));
}
/// Create a copy of Organization
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostalAddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $PostalAddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// Adds pattern-matching-related methods to [Organization].
extension OrganizationPatterns on Organization {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Organization value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Organization() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Organization value)  $default,){
final _that = this;
switch (_that) {
case _Organization():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Organization value)?  $default,){
final _that = this;
switch (_that) {
case _Organization() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  String? name,  String? legalName,  String? url,  String? email,  String? telephone,  PostalAddress? address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Organization() when $default != null:
return $default(_that.context,_that.type,_that.id,_that.name,_that.legalName,_that.url,_that.email,_that.telephone,_that.address);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  String? name,  String? legalName,  String? url,  String? email,  String? telephone,  PostalAddress? address)  $default,) {final _that = this;
switch (_that) {
case _Organization():
return $default(_that.context,_that.type,_that.id,_that.name,_that.legalName,_that.url,_that.email,_that.telephone,_that.address);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  String? name,  String? legalName,  String? url,  String? email,  String? telephone,  PostalAddress? address)?  $default,) {final _that = this;
switch (_that) {
case _Organization() when $default != null:
return $default(_that.context,_that.type,_that.id,_that.name,_that.legalName,_that.url,_that.email,_that.telephone,_that.address);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Organization implements Organization {
  const _Organization({@JsonKey(name: '@context') this.context = 'https://schema.org', @JsonKey(name: '@type') this.type = 'Organization', @JsonKey(name: '@id') this.id, this.name, this.legalName, this.url, this.email, this.telephone, this.address});
  factory _Organization.fromJson(Map<String, dynamic> json) => _$OrganizationFromJson(json);

@override@JsonKey(name: '@context') final  String context;
@override@JsonKey(name: '@type') final  String type;
@override@JsonKey(name: '@id') final  String? id;
@override final  String? name;
@override final  String? legalName;
@override final  String? url;
@override final  String? email;
@override final  String? telephone;
@override final  PostalAddress? address;

/// Create a copy of Organization
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrganizationCopyWith<_Organization> get copyWith => __$OrganizationCopyWithImpl<_Organization>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrganizationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Organization&&(identical(other.context, context) || other.context == context)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.legalName, legalName) || other.legalName == legalName)&&(identical(other.url, url) || other.url == url)&&(identical(other.email, email) || other.email == email)&&(identical(other.telephone, telephone) || other.telephone == telephone)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,context,type,id,name,legalName,url,email,telephone,address);

@override
String toString() {
  return 'Organization(context: $context, type: $type, id: $id, name: $name, legalName: $legalName, url: $url, email: $email, telephone: $telephone, address: $address)';
}


}

/// @nodoc
abstract mixin class _$OrganizationCopyWith<$Res> implements $OrganizationCopyWith<$Res> {
  factory _$OrganizationCopyWith(_Organization value, $Res Function(_Organization) _then) = __$OrganizationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '@context') String context,@JsonKey(name: '@type') String type,@JsonKey(name: '@id') String? id, String? name, String? legalName, String? url, String? email, String? telephone, PostalAddress? address
});


@override $PostalAddressCopyWith<$Res>? get address;

}
/// @nodoc
class __$OrganizationCopyWithImpl<$Res>
    implements _$OrganizationCopyWith<$Res> {
  __$OrganizationCopyWithImpl(this._self, this._then);

  final _Organization _self;
  final $Res Function(_Organization) _then;

/// Create a copy of Organization
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? context = null,Object? type = null,Object? id = freezed,Object? name = freezed,Object? legalName = freezed,Object? url = freezed,Object? email = freezed,Object? telephone = freezed,Object? address = freezed,}) {
  return _then(_Organization(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,legalName: freezed == legalName ? _self.legalName : legalName // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,telephone: freezed == telephone ? _self.telephone : telephone // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as PostalAddress?,
  ));
}

/// Create a copy of Organization
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostalAddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $PostalAddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// @nodoc
mixin _$PostalAddress {

@JsonKey(name: '@context') String get context;@JsonKey(name: '@type') String get type;@JsonKey(name: '@id') String? get id; String? get streetAddress; String? get addressLocality; String? get addressRegion; String? get postalCode; String? get addressCountry;
/// Create a copy of PostalAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostalAddressCopyWith<PostalAddress> get copyWith => _$PostalAddressCopyWithImpl<PostalAddress>(this as PostalAddress, _$identity);

  /// Serializes this PostalAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostalAddress&&(identical(other.context, context) || other.context == context)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.streetAddress, streetAddress) || other.streetAddress == streetAddress)&&(identical(other.addressLocality, addressLocality) || other.addressLocality == addressLocality)&&(identical(other.addressRegion, addressRegion) || other.addressRegion == addressRegion)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.addressCountry, addressCountry) || other.addressCountry == addressCountry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,context,type,id,streetAddress,addressLocality,addressRegion,postalCode,addressCountry);

@override
String toString() {
  return 'PostalAddress(context: $context, type: $type, id: $id, streetAddress: $streetAddress, addressLocality: $addressLocality, addressRegion: $addressRegion, postalCode: $postalCode, addressCountry: $addressCountry)';
}


}

/// @nodoc
abstract mixin class $PostalAddressCopyWith<$Res>  {
  factory $PostalAddressCopyWith(PostalAddress value, $Res Function(PostalAddress) _then) = _$PostalAddressCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '@context') String context,@JsonKey(name: '@type') String type,@JsonKey(name: '@id') String? id, String? streetAddress, String? addressLocality, String? addressRegion, String? postalCode, String? addressCountry
});




}
/// @nodoc
class _$PostalAddressCopyWithImpl<$Res>
    implements $PostalAddressCopyWith<$Res> {
  _$PostalAddressCopyWithImpl(this._self, this._then);

  final PostalAddress _self;
  final $Res Function(PostalAddress) _then;

/// Create a copy of PostalAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? context = null,Object? type = null,Object? id = freezed,Object? streetAddress = freezed,Object? addressLocality = freezed,Object? addressRegion = freezed,Object? postalCode = freezed,Object? addressCountry = freezed,}) {
  return _then(_self.copyWith(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,streetAddress: freezed == streetAddress ? _self.streetAddress : streetAddress // ignore: cast_nullable_to_non_nullable
as String?,addressLocality: freezed == addressLocality ? _self.addressLocality : addressLocality // ignore: cast_nullable_to_non_nullable
as String?,addressRegion: freezed == addressRegion ? _self.addressRegion : addressRegion // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,addressCountry: freezed == addressCountry ? _self.addressCountry : addressCountry // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PostalAddress].
extension PostalAddressPatterns on PostalAddress {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostalAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostalAddress() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostalAddress value)  $default,){
final _that = this;
switch (_that) {
case _PostalAddress():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostalAddress value)?  $default,){
final _that = this;
switch (_that) {
case _PostalAddress() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  String? streetAddress,  String? addressLocality,  String? addressRegion,  String? postalCode,  String? addressCountry)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostalAddress() when $default != null:
return $default(_that.context,_that.type,_that.id,_that.streetAddress,_that.addressLocality,_that.addressRegion,_that.postalCode,_that.addressCountry);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  String? streetAddress,  String? addressLocality,  String? addressRegion,  String? postalCode,  String? addressCountry)  $default,) {final _that = this;
switch (_that) {
case _PostalAddress():
return $default(_that.context,_that.type,_that.id,_that.streetAddress,_that.addressLocality,_that.addressRegion,_that.postalCode,_that.addressCountry);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  String? streetAddress,  String? addressLocality,  String? addressRegion,  String? postalCode,  String? addressCountry)?  $default,) {final _that = this;
switch (_that) {
case _PostalAddress() when $default != null:
return $default(_that.context,_that.type,_that.id,_that.streetAddress,_that.addressLocality,_that.addressRegion,_that.postalCode,_that.addressCountry);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostalAddress implements PostalAddress {
  const _PostalAddress({@JsonKey(name: '@context') this.context = 'https://schema.org', @JsonKey(name: '@type') this.type = 'PostalAddress', @JsonKey(name: '@id') this.id, this.streetAddress, this.addressLocality, this.addressRegion, this.postalCode, this.addressCountry});
  factory _PostalAddress.fromJson(Map<String, dynamic> json) => _$PostalAddressFromJson(json);

@override@JsonKey(name: '@context') final  String context;
@override@JsonKey(name: '@type') final  String type;
@override@JsonKey(name: '@id') final  String? id;
@override final  String? streetAddress;
@override final  String? addressLocality;
@override final  String? addressRegion;
@override final  String? postalCode;
@override final  String? addressCountry;

/// Create a copy of PostalAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostalAddressCopyWith<_PostalAddress> get copyWith => __$PostalAddressCopyWithImpl<_PostalAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostalAddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostalAddress&&(identical(other.context, context) || other.context == context)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.streetAddress, streetAddress) || other.streetAddress == streetAddress)&&(identical(other.addressLocality, addressLocality) || other.addressLocality == addressLocality)&&(identical(other.addressRegion, addressRegion) || other.addressRegion == addressRegion)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.addressCountry, addressCountry) || other.addressCountry == addressCountry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,context,type,id,streetAddress,addressLocality,addressRegion,postalCode,addressCountry);

@override
String toString() {
  return 'PostalAddress(context: $context, type: $type, id: $id, streetAddress: $streetAddress, addressLocality: $addressLocality, addressRegion: $addressRegion, postalCode: $postalCode, addressCountry: $addressCountry)';
}


}

/// @nodoc
abstract mixin class _$PostalAddressCopyWith<$Res> implements $PostalAddressCopyWith<$Res> {
  factory _$PostalAddressCopyWith(_PostalAddress value, $Res Function(_PostalAddress) _then) = __$PostalAddressCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '@context') String context,@JsonKey(name: '@type') String type,@JsonKey(name: '@id') String? id, String? streetAddress, String? addressLocality, String? addressRegion, String? postalCode, String? addressCountry
});




}
/// @nodoc
class __$PostalAddressCopyWithImpl<$Res>
    implements _$PostalAddressCopyWith<$Res> {
  __$PostalAddressCopyWithImpl(this._self, this._then);

  final _PostalAddress _self;
  final $Res Function(_PostalAddress) _then;

/// Create a copy of PostalAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? context = null,Object? type = null,Object? id = freezed,Object? streetAddress = freezed,Object? addressLocality = freezed,Object? addressRegion = freezed,Object? postalCode = freezed,Object? addressCountry = freezed,}) {
  return _then(_PostalAddress(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,streetAddress: freezed == streetAddress ? _self.streetAddress : streetAddress // ignore: cast_nullable_to_non_nullable
as String?,addressLocality: freezed == addressLocality ? _self.addressLocality : addressLocality // ignore: cast_nullable_to_non_nullable
as String?,addressRegion: freezed == addressRegion ? _self.addressRegion : addressRegion // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,addressCountry: freezed == addressCountry ? _self.addressCountry : addressCountry // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Thing {

@JsonKey(name: '@context') String get context;@JsonKey(name: '@type') String get type;@JsonKey(name: '@id') String? get id; String? get name; String? get description; String? get url; String? get image;
/// Create a copy of Thing
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThingCopyWith<Thing> get copyWith => _$ThingCopyWithImpl<Thing>(this as Thing, _$identity);

  /// Serializes this Thing to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Thing&&(identical(other.context, context) || other.context == context)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.url, url) || other.url == url)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,context,type,id,name,description,url,image);

@override
String toString() {
  return 'Thing(context: $context, type: $type, id: $id, name: $name, description: $description, url: $url, image: $image)';
}


}

/// @nodoc
abstract mixin class $ThingCopyWith<$Res>  {
  factory $ThingCopyWith(Thing value, $Res Function(Thing) _then) = _$ThingCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '@context') String context,@JsonKey(name: '@type') String type,@JsonKey(name: '@id') String? id, String? name, String? description, String? url, String? image
});




}
/// @nodoc
class _$ThingCopyWithImpl<$Res>
    implements $ThingCopyWith<$Res> {
  _$ThingCopyWithImpl(this._self, this._then);

  final Thing _self;
  final $Res Function(Thing) _then;

/// Create a copy of Thing
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? context = null,Object? type = null,Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? url = freezed,Object? image = freezed,}) {
  return _then(_self.copyWith(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Thing].
extension ThingPatterns on Thing {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Thing value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Thing() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Thing value)  $default,){
final _that = this;
switch (_that) {
case _Thing():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Thing value)?  $default,){
final _that = this;
switch (_that) {
case _Thing() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  String? name,  String? description,  String? url,  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Thing() when $default != null:
return $default(_that.context,_that.type,_that.id,_that.name,_that.description,_that.url,_that.image);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  String? name,  String? description,  String? url,  String? image)  $default,) {final _that = this;
switch (_that) {
case _Thing():
return $default(_that.context,_that.type,_that.id,_that.name,_that.description,_that.url,_that.image);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  String? name,  String? description,  String? url,  String? image)?  $default,) {final _that = this;
switch (_that) {
case _Thing() when $default != null:
return $default(_that.context,_that.type,_that.id,_that.name,_that.description,_that.url,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Thing implements Thing {
  const _Thing({@JsonKey(name: '@context') this.context = 'https://schema.org', @JsonKey(name: '@type') this.type = 'Thing', @JsonKey(name: '@id') this.id, this.name, this.description, this.url, this.image});
  factory _Thing.fromJson(Map<String, dynamic> json) => _$ThingFromJson(json);

@override@JsonKey(name: '@context') final  String context;
@override@JsonKey(name: '@type') final  String type;
@override@JsonKey(name: '@id') final  String? id;
@override final  String? name;
@override final  String? description;
@override final  String? url;
@override final  String? image;

/// Create a copy of Thing
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThingCopyWith<_Thing> get copyWith => __$ThingCopyWithImpl<_Thing>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ThingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Thing&&(identical(other.context, context) || other.context == context)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.url, url) || other.url == url)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,context,type,id,name,description,url,image);

@override
String toString() {
  return 'Thing(context: $context, type: $type, id: $id, name: $name, description: $description, url: $url, image: $image)';
}


}

/// @nodoc
abstract mixin class _$ThingCopyWith<$Res> implements $ThingCopyWith<$Res> {
  factory _$ThingCopyWith(_Thing value, $Res Function(_Thing) _then) = __$ThingCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '@context') String context,@JsonKey(name: '@type') String type,@JsonKey(name: '@id') String? id, String? name, String? description, String? url, String? image
});




}
/// @nodoc
class __$ThingCopyWithImpl<$Res>
    implements _$ThingCopyWith<$Res> {
  __$ThingCopyWithImpl(this._self, this._then);

  final _Thing _self;
  final $Res Function(_Thing) _then;

/// Create a copy of Thing
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? context = null,Object? type = null,Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? url = freezed,Object? image = freezed,}) {
  return _then(_Thing(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Place {

@JsonKey(name: '@context') String get context;@JsonKey(name: '@type') String get type;@JsonKey(name: '@id') String? get id; String? get name; String? get description; PostalAddress? get address; GeoCoordinates? get geo;
/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceCopyWith<Place> get copyWith => _$PlaceCopyWithImpl<Place>(this as Place, _$identity);

  /// Serializes this Place to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Place&&(identical(other.context, context) || other.context == context)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.address, address) || other.address == address)&&(identical(other.geo, geo) || other.geo == geo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,context,type,id,name,description,address,geo);

@override
String toString() {
  return 'Place(context: $context, type: $type, id: $id, name: $name, description: $description, address: $address, geo: $geo)';
}


}

/// @nodoc
abstract mixin class $PlaceCopyWith<$Res>  {
  factory $PlaceCopyWith(Place value, $Res Function(Place) _then) = _$PlaceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '@context') String context,@JsonKey(name: '@type') String type,@JsonKey(name: '@id') String? id, String? name, String? description, PostalAddress? address, GeoCoordinates? geo
});


$PostalAddressCopyWith<$Res>? get address;$GeoCoordinatesCopyWith<$Res>? get geo;

}
/// @nodoc
class _$PlaceCopyWithImpl<$Res>
    implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._self, this._then);

  final Place _self;
  final $Res Function(Place) _then;

/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? context = null,Object? type = null,Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? address = freezed,Object? geo = freezed,}) {
  return _then(_self.copyWith(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as PostalAddress?,geo: freezed == geo ? _self.geo : geo // ignore: cast_nullable_to_non_nullable
as GeoCoordinates?,
  ));
}
/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostalAddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $PostalAddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoCoordinatesCopyWith<$Res>? get geo {
    if (_self.geo == null) {
    return null;
  }

  return $GeoCoordinatesCopyWith<$Res>(_self.geo!, (value) {
    return _then(_self.copyWith(geo: value));
  });
}
}


/// Adds pattern-matching-related methods to [Place].
extension PlacePatterns on Place {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Place value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Place() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Place value)  $default,){
final _that = this;
switch (_that) {
case _Place():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Place value)?  $default,){
final _that = this;
switch (_that) {
case _Place() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  String? name,  String? description,  PostalAddress? address,  GeoCoordinates? geo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Place() when $default != null:
return $default(_that.context,_that.type,_that.id,_that.name,_that.description,_that.address,_that.geo);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  String? name,  String? description,  PostalAddress? address,  GeoCoordinates? geo)  $default,) {final _that = this;
switch (_that) {
case _Place():
return $default(_that.context,_that.type,_that.id,_that.name,_that.description,_that.address,_that.geo);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  String? name,  String? description,  PostalAddress? address,  GeoCoordinates? geo)?  $default,) {final _that = this;
switch (_that) {
case _Place() when $default != null:
return $default(_that.context,_that.type,_that.id,_that.name,_that.description,_that.address,_that.geo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Place implements Place {
  const _Place({@JsonKey(name: '@context') this.context = 'https://schema.org', @JsonKey(name: '@type') this.type = 'Place', @JsonKey(name: '@id') this.id, this.name, this.description, this.address, this.geo});
  factory _Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);

@override@JsonKey(name: '@context') final  String context;
@override@JsonKey(name: '@type') final  String type;
@override@JsonKey(name: '@id') final  String? id;
@override final  String? name;
@override final  String? description;
@override final  PostalAddress? address;
@override final  GeoCoordinates? geo;

/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceCopyWith<_Place> get copyWith => __$PlaceCopyWithImpl<_Place>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Place&&(identical(other.context, context) || other.context == context)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.address, address) || other.address == address)&&(identical(other.geo, geo) || other.geo == geo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,context,type,id,name,description,address,geo);

@override
String toString() {
  return 'Place(context: $context, type: $type, id: $id, name: $name, description: $description, address: $address, geo: $geo)';
}


}

/// @nodoc
abstract mixin class _$PlaceCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$PlaceCopyWith(_Place value, $Res Function(_Place) _then) = __$PlaceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '@context') String context,@JsonKey(name: '@type') String type,@JsonKey(name: '@id') String? id, String? name, String? description, PostalAddress? address, GeoCoordinates? geo
});


@override $PostalAddressCopyWith<$Res>? get address;@override $GeoCoordinatesCopyWith<$Res>? get geo;

}
/// @nodoc
class __$PlaceCopyWithImpl<$Res>
    implements _$PlaceCopyWith<$Res> {
  __$PlaceCopyWithImpl(this._self, this._then);

  final _Place _self;
  final $Res Function(_Place) _then;

/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? context = null,Object? type = null,Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? address = freezed,Object? geo = freezed,}) {
  return _then(_Place(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as PostalAddress?,geo: freezed == geo ? _self.geo : geo // ignore: cast_nullable_to_non_nullable
as GeoCoordinates?,
  ));
}

/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostalAddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $PostalAddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of Place
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoCoordinatesCopyWith<$Res>? get geo {
    if (_self.geo == null) {
    return null;
  }

  return $GeoCoordinatesCopyWith<$Res>(_self.geo!, (value) {
    return _then(_self.copyWith(geo: value));
  });
}
}


/// @nodoc
mixin _$GeoCoordinates {

@JsonKey(name: '@context') String get context;@JsonKey(name: '@type') String get type;@JsonKey(name: '@id') String? get id; double? get latitude; double? get longitude; double? get elevation;
/// Create a copy of GeoCoordinates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeoCoordinatesCopyWith<GeoCoordinates> get copyWith => _$GeoCoordinatesCopyWithImpl<GeoCoordinates>(this as GeoCoordinates, _$identity);

  /// Serializes this GeoCoordinates to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeoCoordinates&&(identical(other.context, context) || other.context == context)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.elevation, elevation) || other.elevation == elevation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,context,type,id,latitude,longitude,elevation);

@override
String toString() {
  return 'GeoCoordinates(context: $context, type: $type, id: $id, latitude: $latitude, longitude: $longitude, elevation: $elevation)';
}


}

/// @nodoc
abstract mixin class $GeoCoordinatesCopyWith<$Res>  {
  factory $GeoCoordinatesCopyWith(GeoCoordinates value, $Res Function(GeoCoordinates) _then) = _$GeoCoordinatesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '@context') String context,@JsonKey(name: '@type') String type,@JsonKey(name: '@id') String? id, double? latitude, double? longitude, double? elevation
});




}
/// @nodoc
class _$GeoCoordinatesCopyWithImpl<$Res>
    implements $GeoCoordinatesCopyWith<$Res> {
  _$GeoCoordinatesCopyWithImpl(this._self, this._then);

  final GeoCoordinates _self;
  final $Res Function(GeoCoordinates) _then;

/// Create a copy of GeoCoordinates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? context = null,Object? type = null,Object? id = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? elevation = freezed,}) {
  return _then(_self.copyWith(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,elevation: freezed == elevation ? _self.elevation : elevation // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [GeoCoordinates].
extension GeoCoordinatesPatterns on GeoCoordinates {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeoCoordinates value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeoCoordinates() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeoCoordinates value)  $default,){
final _that = this;
switch (_that) {
case _GeoCoordinates():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeoCoordinates value)?  $default,){
final _that = this;
switch (_that) {
case _GeoCoordinates() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  double? latitude,  double? longitude,  double? elevation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeoCoordinates() when $default != null:
return $default(_that.context,_that.type,_that.id,_that.latitude,_that.longitude,_that.elevation);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  double? latitude,  double? longitude,  double? elevation)  $default,) {final _that = this;
switch (_that) {
case _GeoCoordinates():
return $default(_that.context,_that.type,_that.id,_that.latitude,_that.longitude,_that.elevation);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  double? latitude,  double? longitude,  double? elevation)?  $default,) {final _that = this;
switch (_that) {
case _GeoCoordinates() when $default != null:
return $default(_that.context,_that.type,_that.id,_that.latitude,_that.longitude,_that.elevation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeoCoordinates implements GeoCoordinates {
  const _GeoCoordinates({@JsonKey(name: '@context') this.context = 'https://schema.org', @JsonKey(name: '@type') this.type = 'GeoCoordinates', @JsonKey(name: '@id') this.id, this.latitude, this.longitude, this.elevation});
  factory _GeoCoordinates.fromJson(Map<String, dynamic> json) => _$GeoCoordinatesFromJson(json);

@override@JsonKey(name: '@context') final  String context;
@override@JsonKey(name: '@type') final  String type;
@override@JsonKey(name: '@id') final  String? id;
@override final  double? latitude;
@override final  double? longitude;
@override final  double? elevation;

/// Create a copy of GeoCoordinates
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeoCoordinatesCopyWith<_GeoCoordinates> get copyWith => __$GeoCoordinatesCopyWithImpl<_GeoCoordinates>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeoCoordinatesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeoCoordinates&&(identical(other.context, context) || other.context == context)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.elevation, elevation) || other.elevation == elevation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,context,type,id,latitude,longitude,elevation);

@override
String toString() {
  return 'GeoCoordinates(context: $context, type: $type, id: $id, latitude: $latitude, longitude: $longitude, elevation: $elevation)';
}


}

/// @nodoc
abstract mixin class _$GeoCoordinatesCopyWith<$Res> implements $GeoCoordinatesCopyWith<$Res> {
  factory _$GeoCoordinatesCopyWith(_GeoCoordinates value, $Res Function(_GeoCoordinates) _then) = __$GeoCoordinatesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '@context') String context,@JsonKey(name: '@type') String type,@JsonKey(name: '@id') String? id, double? latitude, double? longitude, double? elevation
});




}
/// @nodoc
class __$GeoCoordinatesCopyWithImpl<$Res>
    implements _$GeoCoordinatesCopyWith<$Res> {
  __$GeoCoordinatesCopyWithImpl(this._self, this._then);

  final _GeoCoordinates _self;
  final $Res Function(_GeoCoordinates) _then;

/// Create a copy of GeoCoordinates
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? context = null,Object? type = null,Object? id = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? elevation = freezed,}) {
  return _then(_GeoCoordinates(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,elevation: freezed == elevation ? _self.elevation : elevation // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$Event {

@JsonKey(name: '@context') String get context;@JsonKey(name: '@type') String get type;@JsonKey(name: '@id') String? get id; String? get name; String? get description; String? get startDate; String? get endDate; Place? get location; Person? get organizer;
/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventCopyWith<Event> get copyWith => _$EventCopyWithImpl<Event>(this as Event, _$identity);

  /// Serializes this Event to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Event&&(identical(other.context, context) || other.context == context)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.location, location) || other.location == location)&&(identical(other.organizer, organizer) || other.organizer == organizer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,context,type,id,name,description,startDate,endDate,location,organizer);

@override
String toString() {
  return 'Event(context: $context, type: $type, id: $id, name: $name, description: $description, startDate: $startDate, endDate: $endDate, location: $location, organizer: $organizer)';
}


}

/// @nodoc
abstract mixin class $EventCopyWith<$Res>  {
  factory $EventCopyWith(Event value, $Res Function(Event) _then) = _$EventCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '@context') String context,@JsonKey(name: '@type') String type,@JsonKey(name: '@id') String? id, String? name, String? description, String? startDate, String? endDate, Place? location, Person? organizer
});


$PlaceCopyWith<$Res>? get location;$PersonCopyWith<$Res>? get organizer;

}
/// @nodoc
class _$EventCopyWithImpl<$Res>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._self, this._then);

  final Event _self;
  final $Res Function(Event) _then;

/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? context = null,Object? type = null,Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? location = freezed,Object? organizer = freezed,}) {
  return _then(_self.copyWith(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Place?,organizer: freezed == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as Person?,
  ));
}
/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $PlaceCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PersonCopyWith<$Res>? get organizer {
    if (_self.organizer == null) {
    return null;
  }

  return $PersonCopyWith<$Res>(_self.organizer!, (value) {
    return _then(_self.copyWith(organizer: value));
  });
}
}


/// Adds pattern-matching-related methods to [Event].
extension EventPatterns on Event {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Event value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Event() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Event value)  $default,){
final _that = this;
switch (_that) {
case _Event():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Event value)?  $default,){
final _that = this;
switch (_that) {
case _Event() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  String? name,  String? description,  String? startDate,  String? endDate,  Place? location,  Person? organizer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Event() when $default != null:
return $default(_that.context,_that.type,_that.id,_that.name,_that.description,_that.startDate,_that.endDate,_that.location,_that.organizer);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  String? name,  String? description,  String? startDate,  String? endDate,  Place? location,  Person? organizer)  $default,) {final _that = this;
switch (_that) {
case _Event():
return $default(_that.context,_that.type,_that.id,_that.name,_that.description,_that.startDate,_that.endDate,_that.location,_that.organizer);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  String? name,  String? description,  String? startDate,  String? endDate,  Place? location,  Person? organizer)?  $default,) {final _that = this;
switch (_that) {
case _Event() when $default != null:
return $default(_that.context,_that.type,_that.id,_that.name,_that.description,_that.startDate,_that.endDate,_that.location,_that.organizer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Event implements Event {
  const _Event({@JsonKey(name: '@context') this.context = 'https://schema.org', @JsonKey(name: '@type') this.type = 'Event', @JsonKey(name: '@id') this.id, this.name, this.description, this.startDate, this.endDate, this.location, this.organizer});
  factory _Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

@override@JsonKey(name: '@context') final  String context;
@override@JsonKey(name: '@type') final  String type;
@override@JsonKey(name: '@id') final  String? id;
@override final  String? name;
@override final  String? description;
@override final  String? startDate;
@override final  String? endDate;
@override final  Place? location;
@override final  Person? organizer;

/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventCopyWith<_Event> get copyWith => __$EventCopyWithImpl<_Event>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Event&&(identical(other.context, context) || other.context == context)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.location, location) || other.location == location)&&(identical(other.organizer, organizer) || other.organizer == organizer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,context,type,id,name,description,startDate,endDate,location,organizer);

@override
String toString() {
  return 'Event(context: $context, type: $type, id: $id, name: $name, description: $description, startDate: $startDate, endDate: $endDate, location: $location, organizer: $organizer)';
}


}

/// @nodoc
abstract mixin class _$EventCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$EventCopyWith(_Event value, $Res Function(_Event) _then) = __$EventCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '@context') String context,@JsonKey(name: '@type') String type,@JsonKey(name: '@id') String? id, String? name, String? description, String? startDate, String? endDate, Place? location, Person? organizer
});


@override $PlaceCopyWith<$Res>? get location;@override $PersonCopyWith<$Res>? get organizer;

}
/// @nodoc
class __$EventCopyWithImpl<$Res>
    implements _$EventCopyWith<$Res> {
  __$EventCopyWithImpl(this._self, this._then);

  final _Event _self;
  final $Res Function(_Event) _then;

/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? context = null,Object? type = null,Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? location = freezed,Object? organizer = freezed,}) {
  return _then(_Event(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Place?,organizer: freezed == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as Person?,
  ));
}

/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $PlaceCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PersonCopyWith<$Res>? get organizer {
    if (_self.organizer == null) {
    return null;
  }

  return $PersonCopyWith<$Res>(_self.organizer!, (value) {
    return _then(_self.copyWith(organizer: value));
  });
}
}


/// @nodoc
mixin _$Product {

@JsonKey(name: '@context') String get context;@JsonKey(name: '@type') String get type;@JsonKey(name: '@id') String? get id; String? get name; String? get description; String? get sku; String? get brand; Offer? get offers;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.context, context) || other.context == context)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.offers, offers) || other.offers == offers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,context,type,id,name,description,sku,brand,offers);

@override
String toString() {
  return 'Product(context: $context, type: $type, id: $id, name: $name, description: $description, sku: $sku, brand: $brand, offers: $offers)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '@context') String context,@JsonKey(name: '@type') String type,@JsonKey(name: '@id') String? id, String? name, String? description, String? sku, String? brand, Offer? offers
});


$OfferCopyWith<$Res>? get offers;

}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? context = null,Object? type = null,Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? sku = freezed,Object? brand = freezed,Object? offers = freezed,}) {
  return _then(_self.copyWith(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,offers: freezed == offers ? _self.offers : offers // ignore: cast_nullable_to_non_nullable
as Offer?,
  ));
}
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OfferCopyWith<$Res>? get offers {
    if (_self.offers == null) {
    return null;
  }

  return $OfferCopyWith<$Res>(_self.offers!, (value) {
    return _then(_self.copyWith(offers: value));
  });
}
}


/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product value)  $default,){
final _that = this;
switch (_that) {
case _Product():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product value)?  $default,){
final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  String? name,  String? description,  String? sku,  String? brand,  Offer? offers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.context,_that.type,_that.id,_that.name,_that.description,_that.sku,_that.brand,_that.offers);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  String? name,  String? description,  String? sku,  String? brand,  Offer? offers)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.context,_that.type,_that.id,_that.name,_that.description,_that.sku,_that.brand,_that.offers);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  String? name,  String? description,  String? sku,  String? brand,  Offer? offers)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.context,_that.type,_that.id,_that.name,_that.description,_that.sku,_that.brand,_that.offers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Product implements Product {
  const _Product({@JsonKey(name: '@context') this.context = 'https://schema.org', @JsonKey(name: '@type') this.type = 'Product', @JsonKey(name: '@id') this.id, this.name, this.description, this.sku, this.brand, this.offers});
  factory _Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

@override@JsonKey(name: '@context') final  String context;
@override@JsonKey(name: '@type') final  String type;
@override@JsonKey(name: '@id') final  String? id;
@override final  String? name;
@override final  String? description;
@override final  String? sku;
@override final  String? brand;
@override final  Offer? offers;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.context, context) || other.context == context)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.offers, offers) || other.offers == offers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,context,type,id,name,description,sku,brand,offers);

@override
String toString() {
  return 'Product(context: $context, type: $type, id: $id, name: $name, description: $description, sku: $sku, brand: $brand, offers: $offers)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '@context') String context,@JsonKey(name: '@type') String type,@JsonKey(name: '@id') String? id, String? name, String? description, String? sku, String? brand, Offer? offers
});


@override $OfferCopyWith<$Res>? get offers;

}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? context = null,Object? type = null,Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? sku = freezed,Object? brand = freezed,Object? offers = freezed,}) {
  return _then(_Product(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,offers: freezed == offers ? _self.offers : offers // ignore: cast_nullable_to_non_nullable
as Offer?,
  ));
}

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OfferCopyWith<$Res>? get offers {
    if (_self.offers == null) {
    return null;
  }

  return $OfferCopyWith<$Res>(_self.offers!, (value) {
    return _then(_self.copyWith(offers: value));
  });
}
}


/// @nodoc
mixin _$Offer {

@JsonKey(name: '@context') String get context;@JsonKey(name: '@type') String get type;@JsonKey(name: '@id') String? get id; double? get price; String? get priceCurrency; String? get availability; String? get validFrom;
/// Create a copy of Offer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfferCopyWith<Offer> get copyWith => _$OfferCopyWithImpl<Offer>(this as Offer, _$identity);

  /// Serializes this Offer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Offer&&(identical(other.context, context) || other.context == context)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price)&&(identical(other.priceCurrency, priceCurrency) || other.priceCurrency == priceCurrency)&&(identical(other.availability, availability) || other.availability == availability)&&(identical(other.validFrom, validFrom) || other.validFrom == validFrom));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,context,type,id,price,priceCurrency,availability,validFrom);

@override
String toString() {
  return 'Offer(context: $context, type: $type, id: $id, price: $price, priceCurrency: $priceCurrency, availability: $availability, validFrom: $validFrom)';
}


}

/// @nodoc
abstract mixin class $OfferCopyWith<$Res>  {
  factory $OfferCopyWith(Offer value, $Res Function(Offer) _then) = _$OfferCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '@context') String context,@JsonKey(name: '@type') String type,@JsonKey(name: '@id') String? id, double? price, String? priceCurrency, String? availability, String? validFrom
});




}
/// @nodoc
class _$OfferCopyWithImpl<$Res>
    implements $OfferCopyWith<$Res> {
  _$OfferCopyWithImpl(this._self, this._then);

  final Offer _self;
  final $Res Function(Offer) _then;

/// Create a copy of Offer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? context = null,Object? type = null,Object? id = freezed,Object? price = freezed,Object? priceCurrency = freezed,Object? availability = freezed,Object? validFrom = freezed,}) {
  return _then(_self.copyWith(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,priceCurrency: freezed == priceCurrency ? _self.priceCurrency : priceCurrency // ignore: cast_nullable_to_non_nullable
as String?,availability: freezed == availability ? _self.availability : availability // ignore: cast_nullable_to_non_nullable
as String?,validFrom: freezed == validFrom ? _self.validFrom : validFrom // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Offer].
extension OfferPatterns on Offer {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Offer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Offer() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Offer value)  $default,){
final _that = this;
switch (_that) {
case _Offer():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Offer value)?  $default,){
final _that = this;
switch (_that) {
case _Offer() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  double? price,  String? priceCurrency,  String? availability,  String? validFrom)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Offer() when $default != null:
return $default(_that.context,_that.type,_that.id,_that.price,_that.priceCurrency,_that.availability,_that.validFrom);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  double? price,  String? priceCurrency,  String? availability,  String? validFrom)  $default,) {final _that = this;
switch (_that) {
case _Offer():
return $default(_that.context,_that.type,_that.id,_that.price,_that.priceCurrency,_that.availability,_that.validFrom);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  double? price,  String? priceCurrency,  String? availability,  String? validFrom)?  $default,) {final _that = this;
switch (_that) {
case _Offer() when $default != null:
return $default(_that.context,_that.type,_that.id,_that.price,_that.priceCurrency,_that.availability,_that.validFrom);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Offer implements Offer {
  const _Offer({@JsonKey(name: '@context') this.context = 'https://schema.org', @JsonKey(name: '@type') this.type = 'Offer', @JsonKey(name: '@id') this.id, this.price, this.priceCurrency, this.availability, this.validFrom});
  factory _Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);

@override@JsonKey(name: '@context') final  String context;
@override@JsonKey(name: '@type') final  String type;
@override@JsonKey(name: '@id') final  String? id;
@override final  double? price;
@override final  String? priceCurrency;
@override final  String? availability;
@override final  String? validFrom;

/// Create a copy of Offer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfferCopyWith<_Offer> get copyWith => __$OfferCopyWithImpl<_Offer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfferToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Offer&&(identical(other.context, context) || other.context == context)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price)&&(identical(other.priceCurrency, priceCurrency) || other.priceCurrency == priceCurrency)&&(identical(other.availability, availability) || other.availability == availability)&&(identical(other.validFrom, validFrom) || other.validFrom == validFrom));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,context,type,id,price,priceCurrency,availability,validFrom);

@override
String toString() {
  return 'Offer(context: $context, type: $type, id: $id, price: $price, priceCurrency: $priceCurrency, availability: $availability, validFrom: $validFrom)';
}


}

/// @nodoc
abstract mixin class _$OfferCopyWith<$Res> implements $OfferCopyWith<$Res> {
  factory _$OfferCopyWith(_Offer value, $Res Function(_Offer) _then) = __$OfferCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '@context') String context,@JsonKey(name: '@type') String type,@JsonKey(name: '@id') String? id, double? price, String? priceCurrency, String? availability, String? validFrom
});




}
/// @nodoc
class __$OfferCopyWithImpl<$Res>
    implements _$OfferCopyWith<$Res> {
  __$OfferCopyWithImpl(this._self, this._then);

  final _Offer _self;
  final $Res Function(_Offer) _then;

/// Create a copy of Offer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? context = null,Object? type = null,Object? id = freezed,Object? price = freezed,Object? priceCurrency = freezed,Object? availability = freezed,Object? validFrom = freezed,}) {
  return _then(_Offer(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,priceCurrency: freezed == priceCurrency ? _self.priceCurrency : priceCurrency // ignore: cast_nullable_to_non_nullable
as String?,availability: freezed == availability ? _self.availability : availability // ignore: cast_nullable_to_non_nullable
as String?,validFrom: freezed == validFrom ? _self.validFrom : validFrom // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
