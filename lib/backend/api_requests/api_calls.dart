import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class TestCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? pin = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'test',
      apiUrl: 'http://18.141.200.126/employee-app-api/login',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'email': email,
        'password': password,
        'pin': pin,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? apitoken(dynamic response) => (getJsonField(
        response,
        r'''$.api_token''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$.status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static String? pnum(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.primary_phone''',
      ));
}

class ResetPINCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'resetPIN',
      apiUrl:
          'http://elegantboard.org/app-api//employee-app-api/update-employee-pin',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DashboardDataCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DashboardData',
      apiUrl: 'http://18.141.200.126/employee-app-api/dashboard-data',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'api_token': apiToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? newJobCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.newJobCount''',
      ));
  static int? myJobCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.myJobCount''',
      ));
  static int? noShow(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.noShow''',
      ));
  static int? worked(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.worked''',
      ));
  static int? callOut(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.callOut''',
      ));
  static String? fullName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.fullName''',
      ));
  static List? newJob(dynamic response) => getJsonField(
        response,
        r'''$.newJob''',
        true,
      ) as List?;
  static List<String>? key(dynamic response) => (getJsonField(
        response,
        r'''$.newJob[:].key''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? timchangecheck(dynamic response) => (getJsonField(
        response,
        r'''$.myJob[:].time_change_check''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? timechange(dynamic response) => (getJsonField(
        response,
        r'''$.myJob[:].time_change''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static String? image(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.image''',
      ));
  static List<int>? nextshift(dynamic response) => (getJsonField(
        response,
        r'''$.newJob[:].next_shift''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? nextshiftcheck(dynamic response) => (getJsonField(
        response,
        r'''$.newJob[:].next_shift_check''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? mnextshift(dynamic response) => (getJsonField(
        response,
        r'''$.myJob[:].next_shift''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? mnextshiftcheck(dynamic response) => (getJsonField(
        response,
        r'''$.myJob[:].next_shift_check''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class PefJobCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
    int? preferred,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'PefJob',
      apiUrl: 'http://18.141.200.126/employee-app-api/employee-preferred-jobs',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'api_token': apiToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? jobTitle(dynamic response) => (getJsonField(
        response,
        r'''$.jobs[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? jobs(dynamic response) => getJsonField(
        response,
        r'''$.jobs''',
        true,
      ) as List?;
  static List<int>? pref(dynamic response) => (getJsonField(
        response,
        r'''$.jobs[:].preferred''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class NewcallCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'newcall',
      apiUrl: 'http://18.141.200.126//app-api/login',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'email': email,
        'password': password,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class JobsNearMeCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'JobsNearMe',
      apiUrl: 'http://18.141.200.126/employee-app-api/jobs-near-me',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'api_token': apiToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? newJobnear(dynamic response) => getJsonField(
        response,
        r'''$.newJob''',
        true,
      ) as List?;
  static List? myJobnear(dynamic response) => getJsonField(
        response,
        r'''$.myJob''',
        true,
      ) as List?;
}

class WorkHistoryCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'WorkHistory',
      apiUrl: 'http://18.141.200.126/employee-app-api/employee-work-history',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'api_token': apiToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? clientname(dynamic response) => (getJsonField(
        response,
        r'''$[:].client_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? title(dynamic response) => getJsonField(
        response,
        r'''$[:].title''',
        true,
      ) as List?;
  static List? status(dynamic response) => getJsonField(
        response,
        r'''$[:].status''',
        true,
      ) as List?;
  static List<String>? datea(dynamic response) => (getJsonField(
        response,
        r'''$[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class OtherJobsCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'OtherJobs',
      apiUrl: 'http://18.141.200.126/employee-app-api/employee-other-jobs',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'api_token': apiToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? jobs(dynamic response) => getJsonField(
        response,
        r'''$.jobs''',
        true,
      ) as List?;
}

class JobDetailsCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
    String? key = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'JobDetails',
      apiUrl: 'http://18.141.200.126/employee-app-api/job-details',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'api_token': apiToken,
        'key': key,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdatePasswordCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
    String? newPassword = '',
    String? newPasswordConfirmation = '',
    String? oldPassword = '',
    String? pin = '',
  }) async {
    final ffApiRequestBody = '''
{
  "api_token": "${apiToken}",
  "new_password": "${newPassword}",
  "new_password_confirmation": "${newPasswordConfirmation}",
  "old_password": "${oldPassword}",
  "pin": "${pin}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdatePassword',
      apiUrl: 'http://18.141.200.126/employee-app-api/update-employee-password',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpadtePINCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
    String? oldPin = '',
    String? newPin = '',
  }) async {
    final ffApiRequestBody = '''
{
"api_token":"${apiToken}",
"old_pin":"${oldPin}",
"new_pin":"${newPin}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpadtePIN',
      apiUrl: 'http://18.141.200.126/employee-app-api/update-employee-pin',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateEmailCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
    String? password = '',
    String? email = '',
    String? pin = '',
  }) async {
    final ffApiRequestBody = '''
{
"api_token":"${apiToken}",
"email":"${email}",
"password":"${password}",
"pin":"${pin}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateEmail',
      apiUrl: 'http://18.141.200.126/employee-app-api/update-employee-email',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateAddressCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
    String? street = '',
    String? apt = '',
    String? state = '',
    String? city = '',
    String? zipCode = '',
  }) async {
    final ffApiRequestBody = '''
{
  "api_token": "${apiToken}",
  "street": "${street}",
  "apt": "${apt}",
  "state": "${state}",
  "city": "${city}",
  "zip_code": "${zipCode}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateAddress',
      apiUrl: 'http://18.141.200.126/employee-app-api/update-employee-address',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ForgotPasswordCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? apiToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ForgotPassword',
      apiUrl: 'http://18.141.200.126/employee-app-api/forgot-password',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpPefJobCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
    String? jobId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'UpPefJob',
      apiUrl:
          'http://18.141.200.126/employee-app-api/update-employee-preferred-job/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'api_token': apiToken,
        'job_id': jobId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PreLocCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'PreLoc',
      apiUrl:
          'http://18.141.200.126/employee-app-api/employee-preferred-clients',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'api_token': apiToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpPrefLocCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
    String? clientId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'UpPrefLoc',
      apiUrl:
          'http://18.141.200.126/employee-app-api/update-employee-preferred-client/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'api_token': apiToken,
        'client_id': clientId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateEmpStatusCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
    String? key = '',
    String? status = '',
    String? inTime = '',
    String? outTime = '',
    String? date = '',
    String? payRate = '',
  }) async {
    final ffApiRequestBody = '''
{
  "api_token": "${apiToken}",
  "key": "${key}",
  "status": "${status}",
  "in_time": "${inTime}",
  "out_time": "${outTime}",
  "date": "${date}",
  "pay_rate": "${payRate}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateEmpStatus',
      apiUrl: 'http://18.141.200.126/employee-app-api/update-employee-status?',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? errors(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errors[:].base''',
      ));
}

class UplaodProfilePicCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
    FFUploadedFile? image,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'UplaodProfilePic',
      apiUrl:
          'http://18.141.200.126/employee-app-api/update-employee-profile-image',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'api_token': apiToken,
        'image': image,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RejectedJobsCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'RejectedJobs',
      apiUrl: 'http://18.141.200.126/employee-app-api/rejected-job-offers',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'api_token': apiToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AcceptRjectedCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
    String? orderId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "api_token": "${apiToken}",
  "order_id": "${orderId}"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'AcceptRjected',
      apiUrl:
          'http://18.141.200.126/employee-app-api/accept-rejected-job-offer',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RejectedJobDetailsCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
    String? orderId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'RejectedJobDetails',
      apiUrl: 'http://18.141.200.126/employee-app-api/rejected-job-details',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'api_token': apiToken,
        'order_id': orderId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdatePhoneCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
    String? phoneNumber = '',
    String? type = '',
  }) async {
    final ffApiRequestBody = '''
{
"api_token":"${apiToken}",
"phone_number":"${phoneNumber}",
"type":"${type}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdatePhone',
      apiUrl: 'http://18.141.200.126/employee-app-api/update-employee-phone',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AllJobsCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'AllJobs',
      apiUrl: 'http://18.141.200.126/employee-app-api/all-jobs',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'api_token': apiToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class JobByTitleCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
    String? title = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'JobByTitle',
      apiUrl: 'http://18.141.200.126/employee-app-api/jobs-by-title',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'api_token': apiToken,
        'title': title,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PrefDaysCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
    int? preferred,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'PrefDays',
      apiUrl: 'http://18.141.200.126/employee-app-api/employee-preferred-days',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'api_token': apiToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpPrefDayCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
    String? day = '',
  }) async {
    final ffApiRequestBody = '''
{
  "api_token": "${apiToken}",
  "day": "${day}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpPrefDay',
      apiUrl:
          'http://18.141.200.126/employee-app-api/update-employee-preferred-day/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ClockInCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
    String? code = '',
    String? positionCode = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ClockIn',
      apiUrl: 'http://18.141.200.126/employee-app-api/clock-in',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'api_token': apiToken,
        'code': code,
        'position_code': positionCode,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BreakOutCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BreakOut',
      apiUrl: 'http://18.141.200.126/employee-app-api//break-out',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'api_token': apiToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BreakInCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BreakIn',
      apiUrl: 'http://18.141.200.126/employee-app-api/break-in',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'api_token': apiToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ClockOutCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
    String? code = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ClockOut',
      apiUrl: 'http://18.141.200.126/employee-app-api/clock-out',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'api_token': apiToken,
        'code': code,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PosByclientCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
    String? clientId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'posByclient',
      apiUrl: 'http://18.141.200.126/employee-app-api/positions-by-client',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'api_token': apiToken,
        'client_id': clientId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? posByTtiles(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? posCodes(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ClockInStatusCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ClockInStatus',
      apiUrl: 'http://18.141.200.126/employee-app-api/employee-clock-in-status',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'api_token': apiToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ClockOutWithoutCodeCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
    String? pin = '',
    String? breakDuration = '',
    String? note = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ClockOutWithoutCode',
      apiUrl: 'http://18.141.200.126/employee-app-api/clock-out-without-code',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'api_token': apiToken,
        'pin': pin,
        'break_duration': breakDuration,
        'note': note,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ClientDetailByCodeCall {
  static Future<ApiCallResponse> call({
    String? apiToken = '',
    String? code = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ClientDetailByCode',
      apiUrl: 'http://18.141.200.126/employee-app-api/client-details-by-code',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'api_token': apiToken,
        'code': code,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? posForDropDown(dynamic response) => (getJsonField(
        response,
        r'''$.data.position[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static String? clientNameForScreen(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.client_name''',
      ));
  static List<String>? codeForDropDown(dynamic response) => (getJsonField(
        response,
        r'''$.data.position[:].position_code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
