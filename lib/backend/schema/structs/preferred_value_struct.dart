// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PreferredValueStruct extends BaseStruct {
  PreferredValueStruct({
    List<bool>? preferredValue,
    List<int>? preferred,
    List<bool>? testBol,
    List<String>? clockInTime,
    List<String>? breakOutTime,
    List<String>? breakInTime,
  })  : _preferredValue = preferredValue,
        _preferred = preferred,
        _testBol = testBol,
        _clockInTime = clockInTime,
        _breakOutTime = breakOutTime,
        _breakInTime = breakInTime;

  // "preferredValue" field.
  List<bool>? _preferredValue;
  List<bool> get preferredValue => _preferredValue ?? const [];
  set preferredValue(List<bool>? val) => _preferredValue = val;

  void updatePreferredValue(Function(List<bool>) updateFn) {
    updateFn(_preferredValue ??= []);
  }

  bool hasPreferredValue() => _preferredValue != null;

  // "preferred" field.
  List<int>? _preferred;
  List<int> get preferred => _preferred ?? const [];
  set preferred(List<int>? val) => _preferred = val;

  void updatePreferred(Function(List<int>) updateFn) {
    updateFn(_preferred ??= []);
  }

  bool hasPreferred() => _preferred != null;

  // "test_bol" field.
  List<bool>? _testBol;
  List<bool> get testBol => _testBol ?? const [];
  set testBol(List<bool>? val) => _testBol = val;

  void updateTestBol(Function(List<bool>) updateFn) {
    updateFn(_testBol ??= []);
  }

  bool hasTestBol() => _testBol != null;

  // "clockInTime" field.
  List<String>? _clockInTime;
  List<String> get clockInTime => _clockInTime ?? const [];
  set clockInTime(List<String>? val) => _clockInTime = val;

  void updateClockInTime(Function(List<String>) updateFn) {
    updateFn(_clockInTime ??= []);
  }

  bool hasClockInTime() => _clockInTime != null;

  // "BreakOutTime" field.
  List<String>? _breakOutTime;
  List<String> get breakOutTime => _breakOutTime ?? const [];
  set breakOutTime(List<String>? val) => _breakOutTime = val;

  void updateBreakOutTime(Function(List<String>) updateFn) {
    updateFn(_breakOutTime ??= []);
  }

  bool hasBreakOutTime() => _breakOutTime != null;

  // "BreakInTime" field.
  List<String>? _breakInTime;
  List<String> get breakInTime => _breakInTime ?? const [];
  set breakInTime(List<String>? val) => _breakInTime = val;

  void updateBreakInTime(Function(List<String>) updateFn) {
    updateFn(_breakInTime ??= []);
  }

  bool hasBreakInTime() => _breakInTime != null;

  static PreferredValueStruct fromMap(Map<String, dynamic> data) =>
      PreferredValueStruct(
        preferredValue: getDataList(data['preferredValue']),
        preferred: getDataList(data['preferred']),
        testBol: getDataList(data['test_bol']),
        clockInTime: getDataList(data['clockInTime']),
        breakOutTime: getDataList(data['BreakOutTime']),
        breakInTime: getDataList(data['BreakInTime']),
      );

  static PreferredValueStruct? maybeFromMap(dynamic data) => data is Map
      ? PreferredValueStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'preferredValue': _preferredValue,
        'preferred': _preferred,
        'test_bol': _testBol,
        'clockInTime': _clockInTime,
        'BreakOutTime': _breakOutTime,
        'BreakInTime': _breakInTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'preferredValue': serializeParam(
          _preferredValue,
          ParamType.bool,
          isList: true,
        ),
        'preferred': serializeParam(
          _preferred,
          ParamType.int,
          isList: true,
        ),
        'test_bol': serializeParam(
          _testBol,
          ParamType.bool,
          isList: true,
        ),
        'clockInTime': serializeParam(
          _clockInTime,
          ParamType.String,
          isList: true,
        ),
        'BreakOutTime': serializeParam(
          _breakOutTime,
          ParamType.String,
          isList: true,
        ),
        'BreakInTime': serializeParam(
          _breakInTime,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static PreferredValueStruct fromSerializableMap(Map<String, dynamic> data) =>
      PreferredValueStruct(
        preferredValue: deserializeParam<bool>(
          data['preferredValue'],
          ParamType.bool,
          true,
        ),
        preferred: deserializeParam<int>(
          data['preferred'],
          ParamType.int,
          true,
        ),
        testBol: deserializeParam<bool>(
          data['test_bol'],
          ParamType.bool,
          true,
        ),
        clockInTime: deserializeParam<String>(
          data['clockInTime'],
          ParamType.String,
          true,
        ),
        breakOutTime: deserializeParam<String>(
          data['BreakOutTime'],
          ParamType.String,
          true,
        ),
        breakInTime: deserializeParam<String>(
          data['BreakInTime'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'PreferredValueStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PreferredValueStruct &&
        listEquality.equals(preferredValue, other.preferredValue) &&
        listEquality.equals(preferred, other.preferred) &&
        listEquality.equals(testBol, other.testBol) &&
        listEquality.equals(clockInTime, other.clockInTime) &&
        listEquality.equals(breakOutTime, other.breakOutTime) &&
        listEquality.equals(breakInTime, other.breakInTime);
  }

  @override
  int get hashCode => const ListEquality().hash([
        preferredValue,
        preferred,
        testBol,
        clockInTime,
        breakOutTime,
        breakInTime
      ]);
}

PreferredValueStruct createPreferredValueStruct() => PreferredValueStruct();
