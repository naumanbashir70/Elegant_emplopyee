import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _prefval = LoggableList(
        await secureStorage.getStringList('ff_prefval') ?? _prefval,
      );
    });
    await _safeInitAsync(() async {
      _image = await secureStorage.getString('ff_image') ?? _image;
    });
    await _safeInitAsync(() async {
      _email2 = await secureStorage.getString('ff_email2') ?? _email2;
    });
    await _safeInitAsync(() async {
      _pin = await secureStorage.getString('ff_pin') ?? _pin;
    });
    await _safeInitAsync(() async {
      _pass = await secureStorage.getString('ff_pass') ?? _pass;
    });
    await _safeInitAsync(() async {
      _primarynum =
          await secureStorage.getString('ff_primarynum') ?? _primarynum;
    });
    await _safeInitAsync(() async {
      _alternatenum =
          await secureStorage.getString('ff_alternatenum') ?? _alternatenum;
    });
    await _safeInitAsync(() async {
      _tokenapi = await secureStorage.getString('ff_tokenapi') ?? _tokenapi;
    });
    await _safeInitAsync(() async {
      _ClockInTime =
          await secureStorage.getString('ff_ClockInTime') ?? _ClockInTime;
    });
    await _safeInitAsync(() async {
      _BreakOutTime =
          await secureStorage.getString('ff_BreakOutTime') ?? _BreakOutTime;
    });
    await _safeInitAsync(() async {
      _BreakInTime =
          await secureStorage.getString('ff_BreakInTime') ?? _BreakInTime;
    });
    await _safeInitAsync(() async {
      _CurrentTitle =
          await secureStorage.getString('ff_CurrentTitle') ?? _CurrentTitle;
    });
    await _safeInitAsync(() async {
      _clientname =
          await secureStorage.getString('ff_clientname') ?? _clientname;
    });
    await _safeInitAsync(() async {
      _CurrentPosCode =
          await secureStorage.getString('ff_CurrentPosCode') ?? _CurrentPosCode;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  late LoggableList<String> _prefval = LoggableList([]);
  List<String> get prefval => _prefval?..logger = () => debugLogAppState(this);
  set prefval(List<String> value) {
    if (value != null) {
      _prefval = LoggableList(value);
    }

    secureStorage.setStringList('ff_prefval', value);
    debugLogAppState(this);
  }

  void deletePrefval() {
    secureStorage.delete(key: 'ff_prefval');
  }

  void addToPrefval(String value) {
    prefval.add(value);
    secureStorage.setStringList('ff_prefval', _prefval);
  }

  void removeFromPrefval(String value) {
    prefval.remove(value);
    secureStorage.setStringList('ff_prefval', _prefval);
  }

  void removeAtIndexFromPrefval(int index) {
    prefval.removeAt(index);
    secureStorage.setStringList('ff_prefval', _prefval);
  }

  void updatePrefvalAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    prefval[index] = updateFn(_prefval[index]);
    secureStorage.setStringList('ff_prefval', _prefval);
  }

  void insertAtIndexInPrefval(int index, String value) {
    prefval.insert(index, value);
    secureStorage.setStringList('ff_prefval', _prefval);
  }

  String _image = 'https://picsum.photos/seed/141/600';
  String get image => _image;
  set image(String value) {
    _image = value;
    secureStorage.setString('ff_image', value);
    debugLogAppState(this);
  }

  void deleteImage() {
    secureStorage.delete(key: 'ff_image');
  }

  String _email2 = '';
  String get email2 => _email2;
  set email2(String value) {
    _email2 = value;
    secureStorage.setString('ff_email2', value);
    debugLogAppState(this);
  }

  void deleteEmail2() {
    secureStorage.delete(key: 'ff_email2');
  }

  String _pin = '';
  String get pin => _pin;
  set pin(String value) {
    _pin = value;
    secureStorage.setString('ff_pin', value);
    debugLogAppState(this);
  }

  void deletePin() {
    secureStorage.delete(key: 'ff_pin');
  }

  String _pass = '';
  String get pass => _pass;
  set pass(String value) {
    _pass = value;
    secureStorage.setString('ff_pass', value);
    debugLogAppState(this);
  }

  void deletePass() {
    secureStorage.delete(key: 'ff_pass');
  }

  String _primarynum = '';
  String get primarynum => _primarynum;
  set primarynum(String value) {
    _primarynum = value;
    secureStorage.setString('ff_primarynum', value);
    debugLogAppState(this);
  }

  void deletePrimarynum() {
    secureStorage.delete(key: 'ff_primarynum');
  }

  String _alternatenum = '';
  String get alternatenum => _alternatenum;
  set alternatenum(String value) {
    _alternatenum = value;
    secureStorage.setString('ff_alternatenum', value);
    debugLogAppState(this);
  }

  void deleteAlternatenum() {
    secureStorage.delete(key: 'ff_alternatenum');
  }

  String _tokenapi = '';
  String get tokenapi => _tokenapi;
  set tokenapi(String value) {
    _tokenapi = value;
    secureStorage.setString('ff_tokenapi', value);
    debugLogAppState(this);
  }

  void deleteTokenapi() {
    secureStorage.delete(key: 'ff_tokenapi');
  }

  String _ClockInTime = 'currenttime';
  String get ClockInTime => _ClockInTime;
  set ClockInTime(String value) {
    _ClockInTime = value;
    secureStorage.setString('ff_ClockInTime', value);
    debugLogAppState(this);
  }

  void deleteClockInTime() {
    secureStorage.delete(key: 'ff_ClockInTime');
  }

  String _BreakOutTime = '';
  String get BreakOutTime => _BreakOutTime;
  set BreakOutTime(String value) {
    _BreakOutTime = value;
    secureStorage.setString('ff_BreakOutTime', value);
    debugLogAppState(this);
  }

  void deleteBreakOutTime() {
    secureStorage.delete(key: 'ff_BreakOutTime');
  }

  String _BreakInTime = '';
  String get BreakInTime => _BreakInTime;
  set BreakInTime(String value) {
    _BreakInTime = value;
    secureStorage.setString('ff_BreakInTime', value);
    debugLogAppState(this);
  }

  void deleteBreakInTime() {
    secureStorage.delete(key: 'ff_BreakInTime');
  }

  String _CurrentTitle = '';
  String get CurrentTitle => _CurrentTitle;
  set CurrentTitle(String value) {
    _CurrentTitle = value;
    secureStorage.setString('ff_CurrentTitle', value);
    debugLogAppState(this);
  }

  void deleteCurrentTitle() {
    secureStorage.delete(key: 'ff_CurrentTitle');
  }

  String _clientname = '';
  String get clientname => _clientname;
  set clientname(String value) {
    _clientname = value;
    secureStorage.setString('ff_clientname', value);
    debugLogAppState(this);
  }

  void deleteClientname() {
    secureStorage.delete(key: 'ff_clientname');
  }

  String _garbage = '';
  String get garbage => _garbage;
  set garbage(String value) {
    _garbage = value;

    debugLogAppState(this);
  }

  String _CurrentPosCode = '';
  String get CurrentPosCode => _CurrentPosCode;
  set CurrentPosCode(String value) {
    _CurrentPosCode = value;
    secureStorage.setString('ff_CurrentPosCode', value);
    debugLogAppState(this);
  }

  void deleteCurrentPosCode() {
    secureStorage.delete(key: 'ff_CurrentPosCode');
  }

  Map<String, DebugDataField> toDebugSerializableMap() => {
        'prefval': debugSerializeParam(
          prefval,
          ParamType.String,
          isList: true,
          link:
              'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=ChsKEwoHcHJlZnZhbBIIejN4ZzJjZXNyBBICCANaB3ByZWZ2YWw=',
          name: 'String',
          nullable: false,
        ),
        'image': debugSerializeParam(
          image,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=ChcKEQoFaW1hZ2USCDA5OGFnbGllcgIIBFoFaW1hZ2U=',
          name: 'String',
          nullable: false,
        ),
        'email2': debugSerializeParam(
          email2,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=ChgKEgoGZW1haWwyEghqajR2eG4xMXICCANaBmVtYWlsMg==',
          name: 'String',
          nullable: false,
        ),
        'pin': debugSerializeParam(
          pin,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=appValues&appValuesTab=state',
          searchReference: 'reference=ChcKDwoDcGluEghuZWt2czk1aHICCAN6AFoDcGlu',
          name: 'String',
          nullable: false,
        ),
        'pass': debugSerializeParam(
          pass,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=appValues&appValuesTab=state',
          searchReference: 'reference=ChYKEAoEcGFzcxIIZXNoa3U3NXdyAggDWgRwYXNz',
          name: 'String',
          nullable: false,
        ),
        'primarynum': debugSerializeParam(
          primarynum,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=Ch4KFgoKcHJpbWFyeW51bRIINDU4dGFwMnFyAggDegBaCnByaW1hcnludW0=',
          name: 'String',
          nullable: false,
        ),
        'alternatenum': debugSerializeParam(
          alternatenum,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=CiAKGAoMYWx0ZXJuYXRlbnVtEghuaXo4eHIweXICCAN6AFoMYWx0ZXJuYXRlbnVt',
          name: 'String',
          nullable: false,
        ),
        'tokenapi': debugSerializeParam(
          tokenapi,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=ChwKFAoIdG9rZW5hcGkSCDN2ZGZ2a2hocgIIA3oAWgh0b2tlbmFwaQ==',
          name: 'String',
          nullable: false,
        ),
        'ClockInTime': debugSerializeParam(
          ClockInTime,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=Ch0KFwoLQ2xvY2tJblRpbWUSCGNuMnB0YTl4cgIIA1oLQ2xvY2tJblRpbWU=',
          name: 'String',
          nullable: false,
        ),
        'BreakOutTime': debugSerializeParam(
          BreakOutTime,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=Ch4KGAoMQnJlYWtPdXRUaW1lEgg2eWhuNmYzdnICCANaDEJyZWFrT3V0VGltZQ==',
          name: 'String',
          nullable: false,
        ),
        'BreakInTime': debugSerializeParam(
          BreakInTime,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=Ch0KFwoLQnJlYWtJblRpbWUSCDl0dmkxZHkwcgIIA1oLQnJlYWtJblRpbWU=',
          name: 'String',
          nullable: false,
        ),
        'CurrentTitle': debugSerializeParam(
          CurrentTitle,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=Ch4KGAoMQ3VycmVudFRpdGxlEghoeWNycDB1enICCANaDEN1cnJlbnRUaXRsZQ==',
          name: 'String',
          nullable: false,
        ),
        'clientname': debugSerializeParam(
          clientname,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=ChwKFgoKY2xpZW50bmFtZRIIdDI0ZWVucmpyAggDWgpjbGllbnRuYW1l',
          name: 'String',
          nullable: false,
        ),
        'garbage': debugSerializeParam(
          garbage,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=ChkKEwoHZ2FyYmFnZRIIOHY4NWh1YWJyAggDWgdnYXJiYWdl',
          name: 'String',
          nullable: false,
        ),
        'CurrentPosCode': debugSerializeParam(
          CurrentPosCode,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=CiIKGgoOQ3VycmVudFBvc0NvZGUSCDB1M21rdTBwcgIIA3oAWg5DdXJyZW50UG9zQ29kZQ==',
          name: 'String',
          nullable: false,
        )
      };
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
