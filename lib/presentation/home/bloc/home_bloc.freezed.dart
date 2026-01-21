// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ChangeNFCReadingStatus value)?  changeNFCReadingStatus,TResult Function( _StoreNFCTagData value)?  storeNFCTagData,TResult Function( _CanShowEmptyTagMessage value)?  canShowEmptyTagMessage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangeNFCReadingStatus() when changeNFCReadingStatus != null:
return changeNFCReadingStatus(_that);case _StoreNFCTagData() when storeNFCTagData != null:
return storeNFCTagData(_that);case _CanShowEmptyTagMessage() when canShowEmptyTagMessage != null:
return canShowEmptyTagMessage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ChangeNFCReadingStatus value)  changeNFCReadingStatus,required TResult Function( _StoreNFCTagData value)  storeNFCTagData,required TResult Function( _CanShowEmptyTagMessage value)  canShowEmptyTagMessage,}){
final _that = this;
switch (_that) {
case _ChangeNFCReadingStatus():
return changeNFCReadingStatus(_that);case _StoreNFCTagData():
return storeNFCTagData(_that);case _CanShowEmptyTagMessage():
return canShowEmptyTagMessage(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ChangeNFCReadingStatus value)?  changeNFCReadingStatus,TResult? Function( _StoreNFCTagData value)?  storeNFCTagData,TResult? Function( _CanShowEmptyTagMessage value)?  canShowEmptyTagMessage,}){
final _that = this;
switch (_that) {
case _ChangeNFCReadingStatus() when changeNFCReadingStatus != null:
return changeNFCReadingStatus(_that);case _StoreNFCTagData() when storeNFCTagData != null:
return storeNFCTagData(_that);case _CanShowEmptyTagMessage() when canShowEmptyTagMessage != null:
return canShowEmptyTagMessage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool isNFCReading)?  changeNFCReadingStatus,TResult Function( String tagData,  bool? canShowToast)?  storeNFCTagData,TResult Function( bool isTagEmpty)?  canShowEmptyTagMessage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangeNFCReadingStatus() when changeNFCReadingStatus != null:
return changeNFCReadingStatus(_that.isNFCReading);case _StoreNFCTagData() when storeNFCTagData != null:
return storeNFCTagData(_that.tagData,_that.canShowToast);case _CanShowEmptyTagMessage() when canShowEmptyTagMessage != null:
return canShowEmptyTagMessage(_that.isTagEmpty);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool isNFCReading)  changeNFCReadingStatus,required TResult Function( String tagData,  bool? canShowToast)  storeNFCTagData,required TResult Function( bool isTagEmpty)  canShowEmptyTagMessage,}) {final _that = this;
switch (_that) {
case _ChangeNFCReadingStatus():
return changeNFCReadingStatus(_that.isNFCReading);case _StoreNFCTagData():
return storeNFCTagData(_that.tagData,_that.canShowToast);case _CanShowEmptyTagMessage():
return canShowEmptyTagMessage(_that.isTagEmpty);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool isNFCReading)?  changeNFCReadingStatus,TResult? Function( String tagData,  bool? canShowToast)?  storeNFCTagData,TResult? Function( bool isTagEmpty)?  canShowEmptyTagMessage,}) {final _that = this;
switch (_that) {
case _ChangeNFCReadingStatus() when changeNFCReadingStatus != null:
return changeNFCReadingStatus(_that.isNFCReading);case _StoreNFCTagData() when storeNFCTagData != null:
return storeNFCTagData(_that.tagData,_that.canShowToast);case _CanShowEmptyTagMessage() when canShowEmptyTagMessage != null:
return canShowEmptyTagMessage(_that.isTagEmpty);case _:
  return null;

}
}

}

/// @nodoc


class _ChangeNFCReadingStatus implements HomeEvent {
  const _ChangeNFCReadingStatus({required this.isNFCReading});
  

 final  bool isNFCReading;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeNFCReadingStatusCopyWith<_ChangeNFCReadingStatus> get copyWith => __$ChangeNFCReadingStatusCopyWithImpl<_ChangeNFCReadingStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeNFCReadingStatus&&(identical(other.isNFCReading, isNFCReading) || other.isNFCReading == isNFCReading));
}


@override
int get hashCode => Object.hash(runtimeType,isNFCReading);

@override
String toString() {
  return 'HomeEvent.changeNFCReadingStatus(isNFCReading: $isNFCReading)';
}


}

/// @nodoc
abstract mixin class _$ChangeNFCReadingStatusCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$ChangeNFCReadingStatusCopyWith(_ChangeNFCReadingStatus value, $Res Function(_ChangeNFCReadingStatus) _then) = __$ChangeNFCReadingStatusCopyWithImpl;
@useResult
$Res call({
 bool isNFCReading
});




}
/// @nodoc
class __$ChangeNFCReadingStatusCopyWithImpl<$Res>
    implements _$ChangeNFCReadingStatusCopyWith<$Res> {
  __$ChangeNFCReadingStatusCopyWithImpl(this._self, this._then);

  final _ChangeNFCReadingStatus _self;
  final $Res Function(_ChangeNFCReadingStatus) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isNFCReading = null,}) {
  return _then(_ChangeNFCReadingStatus(
isNFCReading: null == isNFCReading ? _self.isNFCReading : isNFCReading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _StoreNFCTagData implements HomeEvent {
  const _StoreNFCTagData({required this.tagData, this.canShowToast});
  

 final  String tagData;
 final  bool? canShowToast;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreNFCTagDataCopyWith<_StoreNFCTagData> get copyWith => __$StoreNFCTagDataCopyWithImpl<_StoreNFCTagData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreNFCTagData&&(identical(other.tagData, tagData) || other.tagData == tagData)&&(identical(other.canShowToast, canShowToast) || other.canShowToast == canShowToast));
}


@override
int get hashCode => Object.hash(runtimeType,tagData,canShowToast);

@override
String toString() {
  return 'HomeEvent.storeNFCTagData(tagData: $tagData, canShowToast: $canShowToast)';
}


}

/// @nodoc
abstract mixin class _$StoreNFCTagDataCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$StoreNFCTagDataCopyWith(_StoreNFCTagData value, $Res Function(_StoreNFCTagData) _then) = __$StoreNFCTagDataCopyWithImpl;
@useResult
$Res call({
 String tagData, bool? canShowToast
});




}
/// @nodoc
class __$StoreNFCTagDataCopyWithImpl<$Res>
    implements _$StoreNFCTagDataCopyWith<$Res> {
  __$StoreNFCTagDataCopyWithImpl(this._self, this._then);

  final _StoreNFCTagData _self;
  final $Res Function(_StoreNFCTagData) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tagData = null,Object? canShowToast = freezed,}) {
  return _then(_StoreNFCTagData(
tagData: null == tagData ? _self.tagData : tagData // ignore: cast_nullable_to_non_nullable
as String,canShowToast: freezed == canShowToast ? _self.canShowToast : canShowToast // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc


class _CanShowEmptyTagMessage implements HomeEvent {
  const _CanShowEmptyTagMessage({required this.isTagEmpty});
  

 final  bool isTagEmpty;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CanShowEmptyTagMessageCopyWith<_CanShowEmptyTagMessage> get copyWith => __$CanShowEmptyTagMessageCopyWithImpl<_CanShowEmptyTagMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CanShowEmptyTagMessage&&(identical(other.isTagEmpty, isTagEmpty) || other.isTagEmpty == isTagEmpty));
}


@override
int get hashCode => Object.hash(runtimeType,isTagEmpty);

@override
String toString() {
  return 'HomeEvent.canShowEmptyTagMessage(isTagEmpty: $isTagEmpty)';
}


}

/// @nodoc
abstract mixin class _$CanShowEmptyTagMessageCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$CanShowEmptyTagMessageCopyWith(_CanShowEmptyTagMessage value, $Res Function(_CanShowEmptyTagMessage) _then) = __$CanShowEmptyTagMessageCopyWithImpl;
@useResult
$Res call({
 bool isTagEmpty
});




}
/// @nodoc
class __$CanShowEmptyTagMessageCopyWithImpl<$Res>
    implements _$CanShowEmptyTagMessageCopyWith<$Res> {
  __$CanShowEmptyTagMessageCopyWithImpl(this._self, this._then);

  final _CanShowEmptyTagMessage _self;
  final $Res Function(_CanShowEmptyTagMessage) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isTagEmpty = null,}) {
  return _then(_CanShowEmptyTagMessage(
isTagEmpty: null == isTagEmpty ? _self.isTagEmpty : isTagEmpty // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$HomeState {

 bool get isNFCReading; bool get canShowTagEmptyMessage; String get storedDataInTag;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.isNFCReading, isNFCReading) || other.isNFCReading == isNFCReading)&&(identical(other.canShowTagEmptyMessage, canShowTagEmptyMessage) || other.canShowTagEmptyMessage == canShowTagEmptyMessage)&&(identical(other.storedDataInTag, storedDataInTag) || other.storedDataInTag == storedDataInTag));
}


@override
int get hashCode => Object.hash(runtimeType,isNFCReading,canShowTagEmptyMessage,storedDataInTag);

@override
String toString() {
  return 'HomeState(isNFCReading: $isNFCReading, canShowTagEmptyMessage: $canShowTagEmptyMessage, storedDataInTag: $storedDataInTag)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 bool isNFCReading, bool canShowTagEmptyMessage, String storedDataInTag
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isNFCReading = null,Object? canShowTagEmptyMessage = null,Object? storedDataInTag = null,}) {
  return _then(_self.copyWith(
isNFCReading: null == isNFCReading ? _self.isNFCReading : isNFCReading // ignore: cast_nullable_to_non_nullable
as bool,canShowTagEmptyMessage: null == canShowTagEmptyMessage ? _self.canShowTagEmptyMessage : canShowTagEmptyMessage // ignore: cast_nullable_to_non_nullable
as bool,storedDataInTag: null == storedDataInTag ? _self.storedDataInTag : storedDataInTag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isNFCReading,  bool canShowTagEmptyMessage,  String storedDataInTag)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.isNFCReading,_that.canShowTagEmptyMessage,_that.storedDataInTag);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isNFCReading,  bool canShowTagEmptyMessage,  String storedDataInTag)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.isNFCReading,_that.canShowTagEmptyMessage,_that.storedDataInTag);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isNFCReading,  bool canShowTagEmptyMessage,  String storedDataInTag)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.isNFCReading,_that.canShowTagEmptyMessage,_that.storedDataInTag);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({required this.isNFCReading, required this.canShowTagEmptyMessage, required this.storedDataInTag});
  

@override final  bool isNFCReading;
@override final  bool canShowTagEmptyMessage;
@override final  String storedDataInTag;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.isNFCReading, isNFCReading) || other.isNFCReading == isNFCReading)&&(identical(other.canShowTagEmptyMessage, canShowTagEmptyMessage) || other.canShowTagEmptyMessage == canShowTagEmptyMessage)&&(identical(other.storedDataInTag, storedDataInTag) || other.storedDataInTag == storedDataInTag));
}


@override
int get hashCode => Object.hash(runtimeType,isNFCReading,canShowTagEmptyMessage,storedDataInTag);

@override
String toString() {
  return 'HomeState(isNFCReading: $isNFCReading, canShowTagEmptyMessage: $canShowTagEmptyMessage, storedDataInTag: $storedDataInTag)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 bool isNFCReading, bool canShowTagEmptyMessage, String storedDataInTag
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isNFCReading = null,Object? canShowTagEmptyMessage = null,Object? storedDataInTag = null,}) {
  return _then(_HomeState(
isNFCReading: null == isNFCReading ? _self.isNFCReading : isNFCReading // ignore: cast_nullable_to_non_nullable
as bool,canShowTagEmptyMessage: null == canShowTagEmptyMessage ? _self.canShowTagEmptyMessage : canShowTagEmptyMessage // ignore: cast_nullable_to_non_nullable
as bool,storedDataInTag: null == storedDataInTag ? _self.storedDataInTag : storedDataInTag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
