// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schema_term.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SchemaType {

 String get id; String get name; String get description; List<String> get parents; List<String> get properties; bool get isEnumeration; List<String> get enumerationMembers; String? get supersededBy; bool get isDeprecated;
/// Create a copy of SchemaType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SchemaTypeCopyWith<SchemaType> get copyWith => _$SchemaTypeCopyWithImpl<SchemaType>(this as SchemaType, _$identity);

  /// Serializes this SchemaType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SchemaType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.parents, parents)&&const DeepCollectionEquality().equals(other.properties, properties)&&(identical(other.isEnumeration, isEnumeration) || other.isEnumeration == isEnumeration)&&const DeepCollectionEquality().equals(other.enumerationMembers, enumerationMembers)&&(identical(other.supersededBy, supersededBy) || other.supersededBy == supersededBy)&&(identical(other.isDeprecated, isDeprecated) || other.isDeprecated == isDeprecated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,const DeepCollectionEquality().hash(parents),const DeepCollectionEquality().hash(properties),isEnumeration,const DeepCollectionEquality().hash(enumerationMembers),supersededBy,isDeprecated);

@override
String toString() {
  return 'SchemaType(id: $id, name: $name, description: $description, parents: $parents, properties: $properties, isEnumeration: $isEnumeration, enumerationMembers: $enumerationMembers, supersededBy: $supersededBy, isDeprecated: $isDeprecated)';
}


}

/// @nodoc
abstract mixin class $SchemaTypeCopyWith<$Res>  {
  factory $SchemaTypeCopyWith(SchemaType value, $Res Function(SchemaType) _then) = _$SchemaTypeCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, List<String> parents, List<String> properties, bool isEnumeration, List<String> enumerationMembers, String? supersededBy, bool isDeprecated
});




}
/// @nodoc
class _$SchemaTypeCopyWithImpl<$Res>
    implements $SchemaTypeCopyWith<$Res> {
  _$SchemaTypeCopyWithImpl(this._self, this._then);

  final SchemaType _self;
  final $Res Function(SchemaType) _then;

/// Create a copy of SchemaType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? parents = null,Object? properties = null,Object? isEnumeration = null,Object? enumerationMembers = null,Object? supersededBy = freezed,Object? isDeprecated = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,parents: null == parents ? _self.parents : parents // ignore: cast_nullable_to_non_nullable
as List<String>,properties: null == properties ? _self.properties : properties // ignore: cast_nullable_to_non_nullable
as List<String>,isEnumeration: null == isEnumeration ? _self.isEnumeration : isEnumeration // ignore: cast_nullable_to_non_nullable
as bool,enumerationMembers: null == enumerationMembers ? _self.enumerationMembers : enumerationMembers // ignore: cast_nullable_to_non_nullable
as List<String>,supersededBy: freezed == supersededBy ? _self.supersededBy : supersededBy // ignore: cast_nullable_to_non_nullable
as String?,isDeprecated: null == isDeprecated ? _self.isDeprecated : isDeprecated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SchemaType].
extension SchemaTypePatterns on SchemaType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SchemaType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SchemaType() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SchemaType value)  $default,){
final _that = this;
switch (_that) {
case _SchemaType():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SchemaType value)?  $default,){
final _that = this;
switch (_that) {
case _SchemaType() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  List<String> parents,  List<String> properties,  bool isEnumeration,  List<String> enumerationMembers,  String? supersededBy,  bool isDeprecated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SchemaType() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.parents,_that.properties,_that.isEnumeration,_that.enumerationMembers,_that.supersededBy,_that.isDeprecated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  List<String> parents,  List<String> properties,  bool isEnumeration,  List<String> enumerationMembers,  String? supersededBy,  bool isDeprecated)  $default,) {final _that = this;
switch (_that) {
case _SchemaType():
return $default(_that.id,_that.name,_that.description,_that.parents,_that.properties,_that.isEnumeration,_that.enumerationMembers,_that.supersededBy,_that.isDeprecated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  List<String> parents,  List<String> properties,  bool isEnumeration,  List<String> enumerationMembers,  String? supersededBy,  bool isDeprecated)?  $default,) {final _that = this;
switch (_that) {
case _SchemaType() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.parents,_that.properties,_that.isEnumeration,_that.enumerationMembers,_that.supersededBy,_that.isDeprecated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SchemaType implements SchemaType {
  const _SchemaType({required this.id, required this.name, required this.description, final  List<String> parents = const [], final  List<String> properties = const [], this.isEnumeration = false, final  List<String> enumerationMembers = const [], this.supersededBy, this.isDeprecated = false}): _parents = parents,_properties = properties,_enumerationMembers = enumerationMembers;
  factory _SchemaType.fromJson(Map<String, dynamic> json) => _$SchemaTypeFromJson(json);

@override final  String id;
@override final  String name;
@override final  String description;
 final  List<String> _parents;
@override@JsonKey() List<String> get parents {
  if (_parents is EqualUnmodifiableListView) return _parents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parents);
}

 final  List<String> _properties;
@override@JsonKey() List<String> get properties {
  if (_properties is EqualUnmodifiableListView) return _properties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_properties);
}

@override@JsonKey() final  bool isEnumeration;
 final  List<String> _enumerationMembers;
@override@JsonKey() List<String> get enumerationMembers {
  if (_enumerationMembers is EqualUnmodifiableListView) return _enumerationMembers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_enumerationMembers);
}

@override final  String? supersededBy;
@override@JsonKey() final  bool isDeprecated;

/// Create a copy of SchemaType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SchemaTypeCopyWith<_SchemaType> get copyWith => __$SchemaTypeCopyWithImpl<_SchemaType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SchemaTypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SchemaType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._parents, _parents)&&const DeepCollectionEquality().equals(other._properties, _properties)&&(identical(other.isEnumeration, isEnumeration) || other.isEnumeration == isEnumeration)&&const DeepCollectionEquality().equals(other._enumerationMembers, _enumerationMembers)&&(identical(other.supersededBy, supersededBy) || other.supersededBy == supersededBy)&&(identical(other.isDeprecated, isDeprecated) || other.isDeprecated == isDeprecated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,const DeepCollectionEquality().hash(_parents),const DeepCollectionEquality().hash(_properties),isEnumeration,const DeepCollectionEquality().hash(_enumerationMembers),supersededBy,isDeprecated);

@override
String toString() {
  return 'SchemaType(id: $id, name: $name, description: $description, parents: $parents, properties: $properties, isEnumeration: $isEnumeration, enumerationMembers: $enumerationMembers, supersededBy: $supersededBy, isDeprecated: $isDeprecated)';
}


}

/// @nodoc
abstract mixin class _$SchemaTypeCopyWith<$Res> implements $SchemaTypeCopyWith<$Res> {
  factory _$SchemaTypeCopyWith(_SchemaType value, $Res Function(_SchemaType) _then) = __$SchemaTypeCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, List<String> parents, List<String> properties, bool isEnumeration, List<String> enumerationMembers, String? supersededBy, bool isDeprecated
});




}
/// @nodoc
class __$SchemaTypeCopyWithImpl<$Res>
    implements _$SchemaTypeCopyWith<$Res> {
  __$SchemaTypeCopyWithImpl(this._self, this._then);

  final _SchemaType _self;
  final $Res Function(_SchemaType) _then;

/// Create a copy of SchemaType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? parents = null,Object? properties = null,Object? isEnumeration = null,Object? enumerationMembers = null,Object? supersededBy = freezed,Object? isDeprecated = null,}) {
  return _then(_SchemaType(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,parents: null == parents ? _self._parents : parents // ignore: cast_nullable_to_non_nullable
as List<String>,properties: null == properties ? _self._properties : properties // ignore: cast_nullable_to_non_nullable
as List<String>,isEnumeration: null == isEnumeration ? _self.isEnumeration : isEnumeration // ignore: cast_nullable_to_non_nullable
as bool,enumerationMembers: null == enumerationMembers ? _self._enumerationMembers : enumerationMembers // ignore: cast_nullable_to_non_nullable
as List<String>,supersededBy: freezed == supersededBy ? _self.supersededBy : supersededBy // ignore: cast_nullable_to_non_nullable
as String?,isDeprecated: null == isDeprecated ? _self.isDeprecated : isDeprecated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$SchemaProperty {

 String get id; String get name; String get description; List<String> get domainIncludes; List<String> get rangeIncludes; List<String> get subPropertyOf; String? get inverseOf; String? get supersededBy; bool get isDeprecated;
/// Create a copy of SchemaProperty
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SchemaPropertyCopyWith<SchemaProperty> get copyWith => _$SchemaPropertyCopyWithImpl<SchemaProperty>(this as SchemaProperty, _$identity);

  /// Serializes this SchemaProperty to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SchemaProperty&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.domainIncludes, domainIncludes)&&const DeepCollectionEquality().equals(other.rangeIncludes, rangeIncludes)&&const DeepCollectionEquality().equals(other.subPropertyOf, subPropertyOf)&&(identical(other.inverseOf, inverseOf) || other.inverseOf == inverseOf)&&(identical(other.supersededBy, supersededBy) || other.supersededBy == supersededBy)&&(identical(other.isDeprecated, isDeprecated) || other.isDeprecated == isDeprecated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,const DeepCollectionEquality().hash(domainIncludes),const DeepCollectionEquality().hash(rangeIncludes),const DeepCollectionEquality().hash(subPropertyOf),inverseOf,supersededBy,isDeprecated);

@override
String toString() {
  return 'SchemaProperty(id: $id, name: $name, description: $description, domainIncludes: $domainIncludes, rangeIncludes: $rangeIncludes, subPropertyOf: $subPropertyOf, inverseOf: $inverseOf, supersededBy: $supersededBy, isDeprecated: $isDeprecated)';
}


}

/// @nodoc
abstract mixin class $SchemaPropertyCopyWith<$Res>  {
  factory $SchemaPropertyCopyWith(SchemaProperty value, $Res Function(SchemaProperty) _then) = _$SchemaPropertyCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, List<String> domainIncludes, List<String> rangeIncludes, List<String> subPropertyOf, String? inverseOf, String? supersededBy, bool isDeprecated
});




}
/// @nodoc
class _$SchemaPropertyCopyWithImpl<$Res>
    implements $SchemaPropertyCopyWith<$Res> {
  _$SchemaPropertyCopyWithImpl(this._self, this._then);

  final SchemaProperty _self;
  final $Res Function(SchemaProperty) _then;

/// Create a copy of SchemaProperty
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? domainIncludes = null,Object? rangeIncludes = null,Object? subPropertyOf = null,Object? inverseOf = freezed,Object? supersededBy = freezed,Object? isDeprecated = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,domainIncludes: null == domainIncludes ? _self.domainIncludes : domainIncludes // ignore: cast_nullable_to_non_nullable
as List<String>,rangeIncludes: null == rangeIncludes ? _self.rangeIncludes : rangeIncludes // ignore: cast_nullable_to_non_nullable
as List<String>,subPropertyOf: null == subPropertyOf ? _self.subPropertyOf : subPropertyOf // ignore: cast_nullable_to_non_nullable
as List<String>,inverseOf: freezed == inverseOf ? _self.inverseOf : inverseOf // ignore: cast_nullable_to_non_nullable
as String?,supersededBy: freezed == supersededBy ? _self.supersededBy : supersededBy // ignore: cast_nullable_to_non_nullable
as String?,isDeprecated: null == isDeprecated ? _self.isDeprecated : isDeprecated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SchemaProperty].
extension SchemaPropertyPatterns on SchemaProperty {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SchemaProperty value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SchemaProperty() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SchemaProperty value)  $default,){
final _that = this;
switch (_that) {
case _SchemaProperty():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SchemaProperty value)?  $default,){
final _that = this;
switch (_that) {
case _SchemaProperty() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  List<String> domainIncludes,  List<String> rangeIncludes,  List<String> subPropertyOf,  String? inverseOf,  String? supersededBy,  bool isDeprecated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SchemaProperty() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.domainIncludes,_that.rangeIncludes,_that.subPropertyOf,_that.inverseOf,_that.supersededBy,_that.isDeprecated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  List<String> domainIncludes,  List<String> rangeIncludes,  List<String> subPropertyOf,  String? inverseOf,  String? supersededBy,  bool isDeprecated)  $default,) {final _that = this;
switch (_that) {
case _SchemaProperty():
return $default(_that.id,_that.name,_that.description,_that.domainIncludes,_that.rangeIncludes,_that.subPropertyOf,_that.inverseOf,_that.supersededBy,_that.isDeprecated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  List<String> domainIncludes,  List<String> rangeIncludes,  List<String> subPropertyOf,  String? inverseOf,  String? supersededBy,  bool isDeprecated)?  $default,) {final _that = this;
switch (_that) {
case _SchemaProperty() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.domainIncludes,_that.rangeIncludes,_that.subPropertyOf,_that.inverseOf,_that.supersededBy,_that.isDeprecated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SchemaProperty implements SchemaProperty {
  const _SchemaProperty({required this.id, required this.name, required this.description, final  List<String> domainIncludes = const [], final  List<String> rangeIncludes = const [], final  List<String> subPropertyOf = const [], this.inverseOf, this.supersededBy, this.isDeprecated = false}): _domainIncludes = domainIncludes,_rangeIncludes = rangeIncludes,_subPropertyOf = subPropertyOf;
  factory _SchemaProperty.fromJson(Map<String, dynamic> json) => _$SchemaPropertyFromJson(json);

@override final  String id;
@override final  String name;
@override final  String description;
 final  List<String> _domainIncludes;
@override@JsonKey() List<String> get domainIncludes {
  if (_domainIncludes is EqualUnmodifiableListView) return _domainIncludes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_domainIncludes);
}

 final  List<String> _rangeIncludes;
@override@JsonKey() List<String> get rangeIncludes {
  if (_rangeIncludes is EqualUnmodifiableListView) return _rangeIncludes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rangeIncludes);
}

 final  List<String> _subPropertyOf;
@override@JsonKey() List<String> get subPropertyOf {
  if (_subPropertyOf is EqualUnmodifiableListView) return _subPropertyOf;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subPropertyOf);
}

@override final  String? inverseOf;
@override final  String? supersededBy;
@override@JsonKey() final  bool isDeprecated;

/// Create a copy of SchemaProperty
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SchemaPropertyCopyWith<_SchemaProperty> get copyWith => __$SchemaPropertyCopyWithImpl<_SchemaProperty>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SchemaPropertyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SchemaProperty&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._domainIncludes, _domainIncludes)&&const DeepCollectionEquality().equals(other._rangeIncludes, _rangeIncludes)&&const DeepCollectionEquality().equals(other._subPropertyOf, _subPropertyOf)&&(identical(other.inverseOf, inverseOf) || other.inverseOf == inverseOf)&&(identical(other.supersededBy, supersededBy) || other.supersededBy == supersededBy)&&(identical(other.isDeprecated, isDeprecated) || other.isDeprecated == isDeprecated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,const DeepCollectionEquality().hash(_domainIncludes),const DeepCollectionEquality().hash(_rangeIncludes),const DeepCollectionEquality().hash(_subPropertyOf),inverseOf,supersededBy,isDeprecated);

@override
String toString() {
  return 'SchemaProperty(id: $id, name: $name, description: $description, domainIncludes: $domainIncludes, rangeIncludes: $rangeIncludes, subPropertyOf: $subPropertyOf, inverseOf: $inverseOf, supersededBy: $supersededBy, isDeprecated: $isDeprecated)';
}


}

/// @nodoc
abstract mixin class _$SchemaPropertyCopyWith<$Res> implements $SchemaPropertyCopyWith<$Res> {
  factory _$SchemaPropertyCopyWith(_SchemaProperty value, $Res Function(_SchemaProperty) _then) = __$SchemaPropertyCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, List<String> domainIncludes, List<String> rangeIncludes, List<String> subPropertyOf, String? inverseOf, String? supersededBy, bool isDeprecated
});




}
/// @nodoc
class __$SchemaPropertyCopyWithImpl<$Res>
    implements _$SchemaPropertyCopyWith<$Res> {
  __$SchemaPropertyCopyWithImpl(this._self, this._then);

  final _SchemaProperty _self;
  final $Res Function(_SchemaProperty) _then;

/// Create a copy of SchemaProperty
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? domainIncludes = null,Object? rangeIncludes = null,Object? subPropertyOf = null,Object? inverseOf = freezed,Object? supersededBy = freezed,Object? isDeprecated = null,}) {
  return _then(_SchemaProperty(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,domainIncludes: null == domainIncludes ? _self._domainIncludes : domainIncludes // ignore: cast_nullable_to_non_nullable
as List<String>,rangeIncludes: null == rangeIncludes ? _self._rangeIncludes : rangeIncludes // ignore: cast_nullable_to_non_nullable
as List<String>,subPropertyOf: null == subPropertyOf ? _self._subPropertyOf : subPropertyOf // ignore: cast_nullable_to_non_nullable
as List<String>,inverseOf: freezed == inverseOf ? _self.inverseOf : inverseOf // ignore: cast_nullable_to_non_nullable
as String?,supersededBy: freezed == supersededBy ? _self.supersededBy : supersededBy // ignore: cast_nullable_to_non_nullable
as String?,isDeprecated: null == isDeprecated ? _self.isDeprecated : isDeprecated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$SchemaEnumerationMember {

 String get id; String get name; String get description; String get enumerationType;
/// Create a copy of SchemaEnumerationMember
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SchemaEnumerationMemberCopyWith<SchemaEnumerationMember> get copyWith => _$SchemaEnumerationMemberCopyWithImpl<SchemaEnumerationMember>(this as SchemaEnumerationMember, _$identity);

  /// Serializes this SchemaEnumerationMember to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SchemaEnumerationMember&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.enumerationType, enumerationType) || other.enumerationType == enumerationType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,enumerationType);

@override
String toString() {
  return 'SchemaEnumerationMember(id: $id, name: $name, description: $description, enumerationType: $enumerationType)';
}


}

/// @nodoc
abstract mixin class $SchemaEnumerationMemberCopyWith<$Res>  {
  factory $SchemaEnumerationMemberCopyWith(SchemaEnumerationMember value, $Res Function(SchemaEnumerationMember) _then) = _$SchemaEnumerationMemberCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, String enumerationType
});




}
/// @nodoc
class _$SchemaEnumerationMemberCopyWithImpl<$Res>
    implements $SchemaEnumerationMemberCopyWith<$Res> {
  _$SchemaEnumerationMemberCopyWithImpl(this._self, this._then);

  final SchemaEnumerationMember _self;
  final $Res Function(SchemaEnumerationMember) _then;

/// Create a copy of SchemaEnumerationMember
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? enumerationType = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,enumerationType: null == enumerationType ? _self.enumerationType : enumerationType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SchemaEnumerationMember].
extension SchemaEnumerationMemberPatterns on SchemaEnumerationMember {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SchemaEnumerationMember value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SchemaEnumerationMember() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SchemaEnumerationMember value)  $default,){
final _that = this;
switch (_that) {
case _SchemaEnumerationMember():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SchemaEnumerationMember value)?  $default,){
final _that = this;
switch (_that) {
case _SchemaEnumerationMember() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String enumerationType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SchemaEnumerationMember() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.enumerationType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String enumerationType)  $default,) {final _that = this;
switch (_that) {
case _SchemaEnumerationMember():
return $default(_that.id,_that.name,_that.description,_that.enumerationType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  String enumerationType)?  $default,) {final _that = this;
switch (_that) {
case _SchemaEnumerationMember() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.enumerationType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SchemaEnumerationMember implements SchemaEnumerationMember {
  const _SchemaEnumerationMember({required this.id, required this.name, required this.description, required this.enumerationType});
  factory _SchemaEnumerationMember.fromJson(Map<String, dynamic> json) => _$SchemaEnumerationMemberFromJson(json);

@override final  String id;
@override final  String name;
@override final  String description;
@override final  String enumerationType;

/// Create a copy of SchemaEnumerationMember
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SchemaEnumerationMemberCopyWith<_SchemaEnumerationMember> get copyWith => __$SchemaEnumerationMemberCopyWithImpl<_SchemaEnumerationMember>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SchemaEnumerationMemberToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SchemaEnumerationMember&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.enumerationType, enumerationType) || other.enumerationType == enumerationType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,enumerationType);

@override
String toString() {
  return 'SchemaEnumerationMember(id: $id, name: $name, description: $description, enumerationType: $enumerationType)';
}


}

/// @nodoc
abstract mixin class _$SchemaEnumerationMemberCopyWith<$Res> implements $SchemaEnumerationMemberCopyWith<$Res> {
  factory _$SchemaEnumerationMemberCopyWith(_SchemaEnumerationMember value, $Res Function(_SchemaEnumerationMember) _then) = __$SchemaEnumerationMemberCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, String enumerationType
});




}
/// @nodoc
class __$SchemaEnumerationMemberCopyWithImpl<$Res>
    implements _$SchemaEnumerationMemberCopyWith<$Res> {
  __$SchemaEnumerationMemberCopyWithImpl(this._self, this._then);

  final _SchemaEnumerationMember _self;
  final $Res Function(_SchemaEnumerationMember) _then;

/// Create a copy of SchemaEnumerationMember
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? enumerationType = null,}) {
  return _then(_SchemaEnumerationMember(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,enumerationType: null == enumerationType ? _self.enumerationType : enumerationType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
