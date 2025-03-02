import 'package:flutter/material.dart';
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
      _prefval = await secureStorage.getStringList('ff_prefval') ?? _prefval;
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
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  List<String> _prefval = [];
  List<String> get prefval => _prefval;
  set prefval(List<String> value) {
    _prefval = value;
    secureStorage.setStringList('ff_prefval', value);
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
  }

  void deleteImage() {
    secureStorage.delete(key: 'ff_image');
  }

  String _email2 = '';
  String get email2 => _email2;
  set email2(String value) {
    _email2 = value;
    secureStorage.setString('ff_email2', value);
  }

  void deleteEmail2() {
    secureStorage.delete(key: 'ff_email2');
  }

  String _pin = '';
  String get pin => _pin;
  set pin(String value) {
    _pin = value;
    secureStorage.setString('ff_pin', value);
  }

  void deletePin() {
    secureStorage.delete(key: 'ff_pin');
  }

  String _pass = '';
  String get pass => _pass;
  set pass(String value) {
    _pass = value;
    secureStorage.setString('ff_pass', value);
  }

  void deletePass() {
    secureStorage.delete(key: 'ff_pass');
  }

  String _primarynum = '';
  String get primarynum => _primarynum;
  set primarynum(String value) {
    _primarynum = value;
  }

  String _alternatenum = '';
  String get alternatenum => _alternatenum;
  set alternatenum(String value) {
    _alternatenum = value;
  }

  String _tokenapi = '';
  String get tokenapi => _tokenapi;
  set tokenapi(String value) {
    _tokenapi = value;
  }

  String _ClockInTime = '';
  String get ClockInTime => _ClockInTime;
  set ClockInTime(String value) {
    _ClockInTime = value;
    secureStorage.setString('ff_ClockInTime', value);
  }

  void deleteClockInTime() {
    secureStorage.delete(key: 'ff_ClockInTime');
  }

  String _BreakOutTime = '';
  String get BreakOutTime => _BreakOutTime;
  set BreakOutTime(String value) {
    _BreakOutTime = value;
    secureStorage.setString('ff_BreakOutTime', value);
  }

  void deleteBreakOutTime() {
    secureStorage.delete(key: 'ff_BreakOutTime');
  }

  String _BreakInTime = '';
  String get BreakInTime => _BreakInTime;
  set BreakInTime(String value) {
    _BreakInTime = value;
    secureStorage.setString('ff_BreakInTime', value);
  }

  void deleteBreakInTime() {
    secureStorage.delete(key: 'ff_BreakInTime');
  }

  String _CurrentTitle = '';
  String get CurrentTitle => _CurrentTitle;
  set CurrentTitle(String value) {
    _CurrentTitle = value;
    secureStorage.setString('ff_CurrentTitle', value);
  }

  void deleteCurrentTitle() {
    secureStorage.delete(key: 'ff_CurrentTitle');
  }

  String _clientname = '';
  String get clientname => _clientname;
  set clientname(String value) {
    _clientname = value;
    secureStorage.setString('ff_clientname', value);
  }

  void deleteClientname() {
    secureStorage.delete(key: 'ff_clientname');
  }

  String _garbage = '';
  String get garbage => _garbage;
  set garbage(String value) {
    _garbage = value;
  }

  String _CurrentPosCode = '';
  String get CurrentPosCode => _CurrentPosCode;
  set CurrentPosCode(String value) {
    _CurrentPosCode = value;
  }
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
