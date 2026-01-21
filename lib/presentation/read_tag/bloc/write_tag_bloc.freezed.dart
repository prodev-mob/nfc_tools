// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'write_tag_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WriteTagEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WriteTagEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WriteTagEvent()';
}


}

/// @nodoc
class $WriteTagEventCopyWith<$Res>  {
$WriteTagEventCopyWith(WriteTagEvent _, $Res Function(WriteTagEvent) __);
}


/// Adds pattern-matching-related methods to [WriteTagEvent].
extension WriteTagEventPatterns on WriteTagEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitialState value)?  initialState,TResult Function( _ChangeDataValue value)?  changeDataValue,TResult Function( _ChangeDataType value)?  changeDataType,TResult Function( _ChangeWriteDataStatus value)?  changeWriteDataStatus,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitialState() when initialState != null:
return initialState(_that);case _ChangeDataValue() when changeDataValue != null:
return changeDataValue(_that);case _ChangeDataType() when changeDataType != null:
return changeDataType(_that);case _ChangeWriteDataStatus() when changeWriteDataStatus != null:
return changeWriteDataStatus(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitialState value)  initialState,required TResult Function( _ChangeDataValue value)  changeDataValue,required TResult Function( _ChangeDataType value)  changeDataType,required TResult Function( _ChangeWriteDataStatus value)  changeWriteDataStatus,}){
final _that = this;
switch (_that) {
case _InitialState():
return initialState(_that);case _ChangeDataValue():
return changeDataValue(_that);case _ChangeDataType():
return changeDataType(_that);case _ChangeWriteDataStatus():
return changeWriteDataStatus(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitialState value)?  initialState,TResult? Function( _ChangeDataValue value)?  changeDataValue,TResult? Function( _ChangeDataType value)?  changeDataType,TResult? Function( _ChangeWriteDataStatus value)?  changeWriteDataStatus,}){
final _that = this;
switch (_that) {
case _InitialState() when initialState != null:
return initialState(_that);case _ChangeDataValue() when changeDataValue != null:
return changeDataValue(_that);case _ChangeDataType() when changeDataType != null:
return changeDataType(_that);case _ChangeWriteDataStatus() when changeWriteDataStatus != null:
return changeWriteDataStatus(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialState,TResult Function( String value)?  changeDataValue,TResult Function( String type)?  changeDataType,TResult Function( WriteDataStatus writeDataStatus)?  changeWriteDataStatus,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitialState() when initialState != null:
return initialState();case _ChangeDataValue() when changeDataValue != null:
return changeDataValue(_that.value);case _ChangeDataType() when changeDataType != null:
return changeDataType(_that.type);case _ChangeWriteDataStatus() when changeWriteDataStatus != null:
return changeWriteDataStatus(_that.writeDataStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialState,required TResult Function( String value)  changeDataValue,required TResult Function( String type)  changeDataType,required TResult Function( WriteDataStatus writeDataStatus)  changeWriteDataStatus,}) {final _that = this;
switch (_that) {
case _InitialState():
return initialState();case _ChangeDataValue():
return changeDataValue(_that.value);case _ChangeDataType():
return changeDataType(_that.type);case _ChangeWriteDataStatus():
return changeWriteDataStatus(_that.writeDataStatus);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialState,TResult? Function( String value)?  changeDataValue,TResult? Function( String type)?  changeDataType,TResult? Function( WriteDataStatus writeDataStatus)?  changeWriteDataStatus,}) {final _that = this;
switch (_that) {
case _InitialState() when initialState != null:
return initialState();case _ChangeDataValue() when changeDataValue != null:
return changeDataValue(_that.value);case _ChangeDataType() when changeDataType != null:
return changeDataType(_that.type);case _ChangeWriteDataStatus() when changeWriteDataStatus != null:
return changeWriteDataStatus(_that.writeDataStatus);case _:
  return null;

}
}

}

/// @nodoc


class _InitialState implements WriteTagEvent {
  const _InitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WriteTagEvent.initialState()';
}


}




/// @nodoc


class _ChangeDataValue implements WriteTagEvent {
  const _ChangeDataValue({required this.value});
  

 final  String value;

/// Create a copy of WriteTagEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeDataValueCopyWith<_ChangeDataValue> get copyWith => __$ChangeDataValueCopyWithImpl<_ChangeDataValue>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeDataValue&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'WriteTagEvent.changeDataValue(value: $value)';
}


}

/// @nodoc
abstract mixin class _$ChangeDataValueCopyWith<$Res> implements $WriteTagEventCopyWith<$Res> {
  factory _$ChangeDataValueCopyWith(_ChangeDataValue value, $Res Function(_ChangeDataValue) _then) = __$ChangeDataValueCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$ChangeDataValueCopyWithImpl<$Res>
    implements _$ChangeDataValueCopyWith<$Res> {
  __$ChangeDataValueCopyWithImpl(this._self, this._then);

  final _ChangeDataValue _self;
  final $Res Function(_ChangeDataValue) _then;

/// Create a copy of WriteTagEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_ChangeDataValue(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ChangeDataType implements WriteTagEvent {
  const _ChangeDataType({required this.type});
  

 final  String type;

/// Create a copy of WriteTagEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeDataTypeCopyWith<_ChangeDataType> get copyWith => __$ChangeDataTypeCopyWithImpl<_ChangeDataType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeDataType&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'WriteTagEvent.changeDataType(type: $type)';
}


}

/// @nodoc
abstract mixin class _$ChangeDataTypeCopyWith<$Res> implements $WriteTagEventCopyWith<$Res> {
  factory _$ChangeDataTypeCopyWith(_ChangeDataType value, $Res Function(_ChangeDataType) _then) = __$ChangeDataTypeCopyWithImpl;
@useResult
$Res call({
 String type
});




}
/// @nodoc
class __$ChangeDataTypeCopyWithImpl<$Res>
    implements _$ChangeDataTypeCopyWith<$Res> {
  __$ChangeDataTypeCopyWithImpl(this._self, this._then);

  final _ChangeDataType _self;
  final $Res Function(_ChangeDataType) _then;

/// Create a copy of WriteTagEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(_ChangeDataType(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ChangeWriteDataStatus implements WriteTagEvent {
  const _ChangeWriteDataStatus({required this.writeDataStatus});
  

 final  WriteDataStatus writeDataStatus;

/// Create a copy of WriteTagEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeWriteDataStatusCopyWith<_ChangeWriteDataStatus> get copyWith => __$ChangeWriteDataStatusCopyWithImpl<_ChangeWriteDataStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeWriteDataStatus&&(identical(other.writeDataStatus, writeDataStatus) || other.writeDataStatus == writeDataStatus));
}


@override
int get hashCode => Object.hash(runtimeType,writeDataStatus);

@override
String toString() {
  return 'WriteTagEvent.changeWriteDataStatus(writeDataStatus: $writeDataStatus)';
}


}

/// @nodoc
abstract mixin class _$ChangeWriteDataStatusCopyWith<$Res> implements $WriteTagEventCopyWith<$Res> {
  factory _$ChangeWriteDataStatusCopyWith(_ChangeWriteDataStatus value, $Res Function(_ChangeWriteDataStatus) _then) = __$ChangeWriteDataStatusCopyWithImpl;
@useResult
$Res call({
 WriteDataStatus writeDataStatus
});




}
/// @nodoc
class __$ChangeWriteDataStatusCopyWithImpl<$Res>
    implements _$ChangeWriteDataStatusCopyWith<$Res> {
  __$ChangeWriteDataStatusCopyWithImpl(this._self, this._then);

  final _ChangeWriteDataStatus _self;
  final $Res Function(_ChangeWriteDataStatus) _then;

/// Create a copy of WriteTagEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? writeDataStatus = null,}) {
  return _then(_ChangeWriteDataStatus(
writeDataStatus: null == writeDataStatus ? _self.writeDataStatus : writeDataStatus // ignore: cast_nullable_to_non_nullable
as WriteDataStatus,
  ));
}


}

/// @nodoc
mixin _$WriteTagState {

 String get dataValue; String get dataType; WriteDataStatus get writeDataStatus;
/// Create a copy of WriteTagState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WriteTagStateCopyWith<WriteTagState> get copyWith => _$WriteTagStateCopyWithImpl<WriteTagState>(this as WriteTagState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WriteTagState&&(identical(other.dataValue, dataValue) || other.dataValue == dataValue)&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.writeDataStatus, writeDataStatus) || other.writeDataStatus == writeDataStatus));
}


@override
int get hashCode => Object.hash(runtimeType,dataValue,dataType,writeDataStatus);

@override
String toString() {
  return 'WriteTagState(dataValue: $dataValue, dataType: $dataType, writeDataStatus: $writeDataStatus)';
}


}

/// @nodoc
abstract mixin class $WriteTagStateCopyWith<$Res>  {
  factory $WriteTagStateCopyWith(WriteTagState value, $Res Function(WriteTagState) _then) = _$WriteTagStateCopyWithImpl;
@useResult
$Res call({
 String dataValue, String dataType, WriteDataStatus writeDataStatus
});




}
/// @nodoc
class _$WriteTagStateCopyWithImpl<$Res>
    implements $WriteTagStateCopyWith<$Res> {
  _$WriteTagStateCopyWithImpl(this._self, this._then);

  final WriteTagState _self;
  final $Res Function(WriteTagState) _then;

/// Create a copy of WriteTagState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dataValue = null,Object? dataType = null,Object? writeDataStatus = null,}) {
  return _then(_self.copyWith(
dataValue: null == dataValue ? _self.dataValue : dataValue // ignore: cast_nullable_to_non_nullable
as String,dataType: null == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as String,writeDataStatus: null == writeDataStatus ? _self.writeDataStatus : writeDataStatus // ignore: cast_nullable_to_non_nullable
as WriteDataStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [WriteTagState].
extension WriteTagStatePatterns on WriteTagState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WriteTagState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WriteTagState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WriteTagState value)  $default,){
final _that = this;
switch (_that) {
case _WriteTagState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WriteTagState value)?  $default,){
final _that = this;
switch (_that) {
case _WriteTagState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String dataValue,  String dataType,  WriteDataStatus writeDataStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WriteTagState() when $default != null:
return $default(_that.dataValue,_that.dataType,_that.writeDataStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String dataValue,  String dataType,  WriteDataStatus writeDataStatus)  $default,) {final _that = this;
switch (_that) {
case _WriteTagState():
return $default(_that.dataValue,_that.dataType,_that.writeDataStatus);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String dataValue,  String dataType,  WriteDataStatus writeDataStatus)?  $default,) {final _that = this;
switch (_that) {
case _WriteTagState() when $default != null:
return $default(_that.dataValue,_that.dataType,_that.writeDataStatus);case _:
  return null;

}
}

}

/// @nodoc


class _WriteTagState implements WriteTagState {
  const _WriteTagState({required this.dataValue, required this.dataType, required this.writeDataStatus});
  

@override final  String dataValue;
@override final  String dataType;
@override final  WriteDataStatus writeDataStatus;

/// Create a copy of WriteTagState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WriteTagStateCopyWith<_WriteTagState> get copyWith => __$WriteTagStateCopyWithImpl<_WriteTagState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WriteTagState&&(identical(other.dataValue, dataValue) || other.dataValue == dataValue)&&(identical(other.dataType, dataType) || other.dataType == dataType)&&(identical(other.writeDataStatus, writeDataStatus) || other.writeDataStatus == writeDataStatus));
}


@override
int get hashCode => Object.hash(runtimeType,dataValue,dataType,writeDataStatus);

@override
String toString() {
  return 'WriteTagState(dataValue: $dataValue, dataType: $dataType, writeDataStatus: $writeDataStatus)';
}


}

/// @nodoc
abstract mixin class _$WriteTagStateCopyWith<$Res> implements $WriteTagStateCopyWith<$Res> {
  factory _$WriteTagStateCopyWith(_WriteTagState value, $Res Function(_WriteTagState) _then) = __$WriteTagStateCopyWithImpl;
@override @useResult
$Res call({
 String dataValue, String dataType, WriteDataStatus writeDataStatus
});




}
/// @nodoc
class __$WriteTagStateCopyWithImpl<$Res>
    implements _$WriteTagStateCopyWith<$Res> {
  __$WriteTagStateCopyWithImpl(this._self, this._then);

  final _WriteTagState _self;
  final $Res Function(_WriteTagState) _then;

/// Create a copy of WriteTagState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dataValue = null,Object? dataType = null,Object? writeDataStatus = null,}) {
  return _then(_WriteTagState(
dataValue: null == dataValue ? _self.dataValue : dataValue // ignore: cast_nullable_to_non_nullable
as String,dataType: null == dataType ? _self.dataType : dataType // ignore: cast_nullable_to_non_nullable
as String,writeDataStatus: null == writeDataStatus ? _self.writeDataStatus : writeDataStatus // ignore: cast_nullable_to_non_nullable
as WriteDataStatus,
  ));
}


}

// dart format on
