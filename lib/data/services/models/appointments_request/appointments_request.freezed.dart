// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointments_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppointmentRequest {

/// Filter by client name.
 String? get clientName;/// Filter by service type.
 String? get service;/// Filter by appointment date (YYYY-MM-DD).
 String? get date;/// Filter by appointment status: "confirmed", "pending", "cancelled".
 String? get status;/// Filter by price (exact match).
 double? get price;
/// Create a copy of AppointmentRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentRequestCopyWith<AppointmentRequest> get copyWith => _$AppointmentRequestCopyWithImpl<AppointmentRequest>(this as AppointmentRequest, _$identity);

  /// Serializes this AppointmentRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentRequest&&(identical(other.clientName, clientName) || other.clientName == clientName)&&(identical(other.service, service) || other.service == service)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clientName,service,date,status,price);

@override
String toString() {
  return 'AppointmentRequest(clientName: $clientName, service: $service, date: $date, status: $status, price: $price)';
}


}

/// @nodoc
abstract mixin class $AppointmentRequestCopyWith<$Res>  {
  factory $AppointmentRequestCopyWith(AppointmentRequest value, $Res Function(AppointmentRequest) _then) = _$AppointmentRequestCopyWithImpl;
@useResult
$Res call({
 String? clientName, String? service, String? date, String? status, double? price
});




}
/// @nodoc
class _$AppointmentRequestCopyWithImpl<$Res>
    implements $AppointmentRequestCopyWith<$Res> {
  _$AppointmentRequestCopyWithImpl(this._self, this._then);

  final AppointmentRequest _self;
  final $Res Function(AppointmentRequest) _then;

/// Create a copy of AppointmentRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clientName = freezed,Object? service = freezed,Object? date = freezed,Object? status = freezed,Object? price = freezed,}) {
  return _then(_self.copyWith(
clientName: freezed == clientName ? _self.clientName : clientName // ignore: cast_nullable_to_non_nullable
as String?,service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppointmentRequest].
extension AppointmentRequestPatterns on AppointmentRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppointmentRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppointmentRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppointmentRequest value)  $default,){
final _that = this;
switch (_that) {
case _AppointmentRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppointmentRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AppointmentRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? clientName,  String? service,  String? date,  String? status,  double? price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppointmentRequest() when $default != null:
return $default(_that.clientName,_that.service,_that.date,_that.status,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? clientName,  String? service,  String? date,  String? status,  double? price)  $default,) {final _that = this;
switch (_that) {
case _AppointmentRequest():
return $default(_that.clientName,_that.service,_that.date,_that.status,_that.price);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? clientName,  String? service,  String? date,  String? status,  double? price)?  $default,) {final _that = this;
switch (_that) {
case _AppointmentRequest() when $default != null:
return $default(_that.clientName,_that.service,_that.date,_that.status,_that.price);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppointmentRequest implements AppointmentRequest {
  const _AppointmentRequest({this.clientName, this.service, this.date, this.status, this.price});
  factory _AppointmentRequest.fromJson(Map<String, dynamic> json) => _$AppointmentRequestFromJson(json);

/// Filter by client name.
@override final  String? clientName;
/// Filter by service type.
@override final  String? service;
/// Filter by appointment date (YYYY-MM-DD).
@override final  String? date;
/// Filter by appointment status: "confirmed", "pending", "cancelled".
@override final  String? status;
/// Filter by price (exact match).
@override final  double? price;

/// Create a copy of AppointmentRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppointmentRequestCopyWith<_AppointmentRequest> get copyWith => __$AppointmentRequestCopyWithImpl<_AppointmentRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppointmentRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppointmentRequest&&(identical(other.clientName, clientName) || other.clientName == clientName)&&(identical(other.service, service) || other.service == service)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clientName,service,date,status,price);

@override
String toString() {
  return 'AppointmentRequest(clientName: $clientName, service: $service, date: $date, status: $status, price: $price)';
}


}

/// @nodoc
abstract mixin class _$AppointmentRequestCopyWith<$Res> implements $AppointmentRequestCopyWith<$Res> {
  factory _$AppointmentRequestCopyWith(_AppointmentRequest value, $Res Function(_AppointmentRequest) _then) = __$AppointmentRequestCopyWithImpl;
@override @useResult
$Res call({
 String? clientName, String? service, String? date, String? status, double? price
});




}
/// @nodoc
class __$AppointmentRequestCopyWithImpl<$Res>
    implements _$AppointmentRequestCopyWith<$Res> {
  __$AppointmentRequestCopyWithImpl(this._self, this._then);

  final _AppointmentRequest _self;
  final $Res Function(_AppointmentRequest) _then;

/// Create a copy of AppointmentRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clientName = freezed,Object? service = freezed,Object? date = freezed,Object? status = freezed,Object? price = freezed,}) {
  return _then(_AppointmentRequest(
clientName: freezed == clientName ? _self.clientName : clientName // ignore: cast_nullable_to_non_nullable
as String?,service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
