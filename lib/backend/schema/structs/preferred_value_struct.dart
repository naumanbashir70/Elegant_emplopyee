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
  })  : _preferredValue =
            preferredValue != null ? LoggableList(preferredValue) : null,
        _preferred = preferred != null ? LoggableList(preferred) : null,
        _testBol = testBol != null ? LoggableList(testBol) : null,
        _clockInTime = clockInTime != null ? LoggableList(clockInTime) : null,
        _breakOutTime =
            breakOutTime != null ? LoggableList(breakOutTime) : null,
        _breakInTime = breakInTime != null ? LoggableList(breakInTime) : null;

  // "preferredValue" field.
  LoggableList<bool>? _preferredValue;
  List<bool> get preferredValue =>
      (_preferredValue ?? LoggableList(const []))..logger = logger;
  set preferredValue(List<bool>? val) {
    if (val != null) {
      _preferredValue = LoggableList(val);
    } else {
      _preferredValue = null;
    }
    debugLog();
  }

  void updatePreferredValue(Function(List<bool>) updateFn) {
    updateFn(_preferredValue ??= LoggableList([]));
    debugLog();
  }

  bool hasPreferredValue() => _preferredValue != null;

  // "preferred" field.
  LoggableList<int>? _preferred;
  List<int> get preferred =>
      (_preferred ?? LoggableList(const []))..logger = logger;
  set preferred(List<int>? val) {
    if (val != null) {
      _preferred = LoggableList(val);
    } else {
      _preferred = null;
    }
    debugLog();
  }

  void updatePreferred(Function(List<int>) updateFn) {
    updateFn(_preferred ??= LoggableList([]));
    debugLog();
  }

  bool hasPreferred() => _preferred != null;

  // "test_bol" field.
  LoggableList<bool>? _testBol;
  List<bool> get testBol =>
      (_testBol ?? LoggableList(const []))..logger = logger;
  set testBol(List<bool>? val) {
    if (val != null) {
      _testBol = LoggableList(val);
    } else {
      _testBol = null;
    }
    debugLog();
  }

  void updateTestBol(Function(List<bool>) updateFn) {
    updateFn(_testBol ??= LoggableList([]));
    debugLog();
  }

  bool hasTestBol() => _testBol != null;

  // "clockInTime" field.
  LoggableList<String>? _clockInTime;
  List<String> get clockInTime =>
      (_clockInTime ?? LoggableList(const []))..logger = logger;
  set clockInTime(List<String>? val) {
    if (val != null) {
      _clockInTime = LoggableList(val);
    } else {
      _clockInTime = null;
    }
    debugLog();
  }

  void updateClockInTime(Function(List<String>) updateFn) {
    updateFn(_clockInTime ??= LoggableList([]));
    debugLog();
  }

  bool hasClockInTime() => _clockInTime != null;

  // "BreakOutTime" field.
  LoggableList<String>? _breakOutTime;
  List<String> get breakOutTime =>
      (_breakOutTime ?? LoggableList(const []))..logger = logger;
  set breakOutTime(List<String>? val) {
    if (val != null) {
      _breakOutTime = LoggableList(val);
    } else {
      _breakOutTime = null;
    }
    debugLog();
  }

  void updateBreakOutTime(Function(List<String>) updateFn) {
    updateFn(_breakOutTime ??= LoggableList([]));
    debugLog();
  }

  bool hasBreakOutTime() => _breakOutTime != null;

  // "BreakInTime" field.
  LoggableList<String>? _breakInTime;
  List<String> get breakInTime =>
      (_breakInTime ?? LoggableList(const []))..logger = logger;
  set breakInTime(List<String>? val) {
    if (val != null) {
      _breakInTime = LoggableList(val);
    } else {
      _breakInTime = null;
    }
    debugLog();
  }

  void updateBreakInTime(Function(List<String>) updateFn) {
    updateFn(_breakInTime ??= LoggableList([]));
    debugLog();
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
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'preferredValue': debugSerializeParam(
          _preferredValue,
          ParamType.bool,
          isList: true,
          name: 'bool',
          nullable: false,
        ),
        'preferred': debugSerializeParam(
          _preferred,
          ParamType.int,
          isList: true,
          name: 'int',
          nullable: false,
        ),
        'test_bol': debugSerializeParam(
          _testBol,
          ParamType.bool,
          isList: true,
          name: 'bool',
          nullable: false,
        ),
        'clockInTime': debugSerializeParam(
          _clockInTime,
          ParamType.String,
          isList: true,
          name: 'String',
          nullable: false,
        ),
        'BreakOutTime': debugSerializeParam(
          _breakOutTime,
          ParamType.String,
          isList: true,
          name: 'String',
          nullable: false,
        ),
        'BreakInTime': debugSerializeParam(
          _breakInTime,
          ParamType.String,
          isList: true,
          name: 'String',
          nullable: false,
        ),
      };

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
