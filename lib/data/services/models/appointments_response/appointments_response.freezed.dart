// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointments_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppointmentResponse {

/// Indicates if the API call was successful.
 bool get success;/// HTTP status code.
 int get status;/// List of appointments returned by the API.
 List<Appointment> get data;
/// Create a copy of AppointmentResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentResponseCopyWith<AppointmentResponse> get copyWith => _$AppointmentResponseCopyWithImpl<AppointmentResponse>(this as AppointmentResponse, _$identity);

  /// Serializes this AppointmentResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,status,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'AppointmentResponse(success: $success, status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $AppointmentResponseCopyWith<$Res>  {
  factory $AppointmentResponseCopyWith(AppointmentResponse value, $Res Function(AppointmentResponse) _then) = _$AppointmentResponseCopyWithImpl;
@useResult
$Res call({
 bool success, int status, List<Appointment> data
});




}
/// @nodoc
class _$AppointmentResponseCopyWithImpl<$Res>
    implements $AppointmentResponseCopyWith<$Res> {
  _$AppointmentResponseCopyWithImpl(this._self, this._then);

  final AppointmentResponse _self;
  final $Res Function(AppointmentResponse) _then;

/// Create a copy of AppointmentResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Appointment>,
  ));
}

}


/// Adds pattern-matching-related methods to [AppointmentResponse].
extension AppointmentResponsePatterns on AppointmentResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppointmentResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppointmentResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppointmentResponse value)  $default,){
final _that = this;
switch (_that) {
case _AppointmentResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppointmentResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AppointmentResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  int status,  List<Appointment> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppointmentResponse() when $default != null:
return $default(_that.success,_that.status,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  int status,  List<Appointment> data)  $default,) {final _that = this;
switch (_that) {
case _AppointmentResponse():
return $default(_that.success,_that.status,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  int status,  List<Appointment> data)?  $default,) {final _that = this;
switch (_that) {
case _AppointmentResponse() when $default != null:
return $default(_that.success,_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppointmentResponse implements AppointmentResponse {
  const _AppointmentResponse({required this.success, required this.status, required final  List<Appointment> data}): _data = data;
  factory _AppointmentResponse.fromJson(Map<String, dynamic> json) => _$AppointmentResponseFromJson(json);

/// Indicates if the API call was successful.
@override final  bool success;
/// HTTP status code.
@override final  int status;
/// List of appointments returned by the API.
 final  List<Appointment> _data;
/// List of appointments returned by the API.
@override List<Appointment> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of AppointmentResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppointmentResponseCopyWith<_AppointmentResponse> get copyWith => __$AppointmentResponseCopyWithImpl<_AppointmentResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppointmentResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppointmentResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,status,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'AppointmentResponse(success: $success, status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AppointmentResponseCopyWith<$Res> implements $AppointmentResponseCopyWith<$Res> {
  factory _$AppointmentResponseCopyWith(_AppointmentResponse value, $Res Function(_AppointmentResponse) _then) = __$AppointmentResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, int status, List<Appointment> data
});




}
/// @nodoc
class __$AppointmentResponseCopyWithImpl<$Res>
    implements _$AppointmentResponseCopyWith<$Res> {
  __$AppointmentResponseCopyWithImpl(this._self, this._then);

  final _AppointmentResponse _self;
  final $Res Function(_AppointmentResponse) _then;

/// Create a copy of AppointmentResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? status = null,Object? data = null,}) {
  return _then(_AppointmentResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Appointment>,
  ));
}


}

// dart format on
