// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? uid,
    String? displayName,
    String? createTime,
    String? pin,
  })  : _uid = uid,
        _displayName = displayName,
        _createTime = createTime,
        _pin = pin;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) {
    _uid = val;
    debugLog();
  }

  bool hasUid() => _uid != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) {
    _displayName = val;
    debugLog();
  }

  bool hasDisplayName() => _displayName != null;

  // "create_time" field.
  String? _createTime;
  String get createTime => _createTime ?? '';
  set createTime(String? val) {
    _createTime = val;
    debugLog();
  }

  bool hasCreateTime() => _createTime != null;

  // "pin" field.
  String? _pin;
  String get pin => _pin ?? '';
  set pin(String? val) {
    _pin = val;
    debugLog();
  }

  bool hasPin() => _pin != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        uid: data['uid'] as String?,
        displayName: data['display_name'] as String?,
        createTime: data['create_time'] as String?,
        pin: data['pin'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'uid': _uid,
        'display_name': _displayName,
        'create_time': _createTime,
        'pin': _pin,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'display_name': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'create_time': serializeParam(
          _createTime,
          ParamType.String,
        ),
        'pin': serializeParam(
          _pin,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        displayName: deserializeParam(
          data['display_name'],
          ParamType.String,
          false,
        ),
        createTime: deserializeParam(
          data['create_time'],
          ParamType.String,
          false,
        ),
        pin: deserializeParam(
          data['pin'],
          ParamType.String,
          false,
        ),
      );
  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'uid': debugSerializeParam(
          uid,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'display_name': debugSerializeParam(
          displayName,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'create_time': debugSerializeParam(
          createTime,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'pin': debugSerializeParam(
          pin,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
      };

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        uid == other.uid &&
        displayName == other.displayName &&
        createTime == other.createTime &&
        pin == other.pin;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([uid, displayName, createTime, pin]);
}

UserStruct createUserStruct({
  String? uid,
  String? displayName,
  String? createTime,
  String? pin,
}) =>
    UserStruct(
      uid: uid,
      displayName: displayName,
      createTime: createTime,
      pin: pin,
    );
