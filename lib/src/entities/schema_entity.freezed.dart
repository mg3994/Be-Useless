// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schema_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SchemaEntity {

@JsonKey(name: '@context') String get context;@JsonKey(name: '@type') String get type;@JsonKey(name: '@id') String? get id; Map<String, dynamic> get properties;
/// Create a copy of SchemaEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SchemaEntityCopyWith<SchemaEntity> get copyWith => _$SchemaEntityCopyWithImpl<SchemaEntity>(this as SchemaEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SchemaEntity&&(identical(other.context, context) || other.context == context)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.properties, properties));
}


@override
int get hashCode => Object.hash(runtimeType,context,type,id,const DeepCollectionEquality().hash(properties));

@override
String toString() {
  return 'SchemaEntity(context: $context, type: $type, id: $id, properties: $properties)';
}


}

/// @nodoc
abstract mixin class $SchemaEntityCopyWith<$Res>  {
  factory $SchemaEntityCopyWith(SchemaEntity value, $Res Function(SchemaEntity) _then) = _$SchemaEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '@context') String context,@JsonKey(name: '@type') String type,@JsonKey(name: '@id') String? id, Map<String, dynamic> properties
});




}
/// @nodoc
class _$SchemaEntityCopyWithImpl<$Res>
    implements $SchemaEntityCopyWith<$Res> {
  _$SchemaEntityCopyWithImpl(this._self, this._then);

  final SchemaEntity _self;
  final $Res Function(SchemaEntity) _then;

/// Create a copy of SchemaEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? context = null,Object? type = null,Object? id = freezed,Object? properties = null,}) {
  return _then(_self.copyWith(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,properties: null == properties ? _self.properties : properties // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [SchemaEntity].
extension SchemaEntityPatterns on SchemaEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SchemaEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SchemaEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SchemaEntity value)  $default,){
final _that = this;
switch (_that) {
case _SchemaEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SchemaEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SchemaEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  Map<String, dynamic> properties)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SchemaEntity() when $default != null:
return $default(_that.context,_that.type,_that.id,_that.properties);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  Map<String, dynamic> properties)  $default,) {final _that = this;
switch (_that) {
case _SchemaEntity():
return $default(_that.context,_that.type,_that.id,_that.properties);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '@context')  String context, @JsonKey(name: '@type')  String type, @JsonKey(name: '@id')  String? id,  Map<String, dynamic> properties)?  $default,) {final _that = this;
switch (_that) {
case _SchemaEntity() when $default != null:
return $default(_that.context,_that.type,_that.id,_that.properties);case _:
  return null;

}
}

}

/// @nodoc


class _SchemaEntity implements SchemaEntity {
  const _SchemaEntity({@JsonKey(name: '@context') this.context = 'https://schema.org', @JsonKey(name: '@type') required this.type, @JsonKey(name: '@id') this.id, final  Map<String, dynamic> properties = const {}}): _properties = properties;


@override@JsonKey(name: '@context') final  String context;
@override@JsonKey(name: '@type') final  String type;
@override@JsonKey(name: '@id') final  String? id;
 final  Map<String, dynamic> _properties;
@override@JsonKey() Map<String, dynamic> get properties {
  if (_properties is EqualUnmodifiableMapView) return _properties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_properties);
}


/// Create a copy of SchemaEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SchemaEntityCopyWith<_SchemaEntity> get copyWith => __$SchemaEntityCopyWithImpl<_SchemaEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SchemaEntity&&(identical(other.context, context) || other.context == context)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._properties, _properties));
}


@override
int get hashCode => Object.hash(runtimeType,context,type,id,const DeepCollectionEquality().hash(_properties));

@override
String toString() {
  return 'SchemaEntity(context: $context, type: $type, id: $id, properties: $properties)';
}


}

/// @nodoc
abstract mixin class _$SchemaEntityCopyWith<$Res> implements $SchemaEntityCopyWith<$Res> {
  factory _$SchemaEntityCopyWith(_SchemaEntity value, $Res Function(_SchemaEntity) _then) = __$SchemaEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '@context') String context,@JsonKey(name: '@type') String type,@JsonKey(name: '@id') String? id, Map<String, dynamic> properties
});




}
/// @nodoc
class __$SchemaEntityCopyWithImpl<$Res>
    implements _$SchemaEntityCopyWith<$Res> {
  __$SchemaEntityCopyWithImpl(this._self, this._then);

  final _SchemaEntity _self;
  final $Res Function(_SchemaEntity) _then;

/// Create a copy of SchemaEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? context = null,Object? type = null,Object? id = freezed,Object? properties = null,}) {
  return _then(_SchemaEntity(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,properties: null == properties ? _self._properties : properties // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
