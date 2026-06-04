import 'dart:convert';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start thai id api Group Code

class ThaiIdApiGroup {
  static String getBaseUrl() => 'https://c0f7-49-231-1-82.ngrok-free.app';
  static Map<String, String> headers = {
    'x-api-key':
        '2f0eb52722ecbf228a4e44d9e14c600b9c4b2f65020484300839e799f58177b0',
  };
  static AuththaidlinkCall auththaidlinkCall = AuththaidlinkCall();
  static AuthThaidStatusSessionIdCall authThaidStatusSessionIdCall =
      AuthThaidStatusSessionIdCall();
}

class AuththaidlinkCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ThaiIdApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'auththaidlink',
      apiUrl: '${baseUrl}/auth/thaid/link',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key':
            '2f0eb52722ecbf228a4e44d9e14c600b9c4b2f65020484300839e799f58177b0',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
  String? sessionId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sessionId''',
      ));
}

class AuthThaidStatusSessionIdCall {
  Future<ApiCallResponse> call({
    String? sessionId = '',
  }) async {
    final baseUrl = ThaiIdApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'auth thaid status session id',
      apiUrl: '${baseUrl}/auth/thaid/status/${sessionId}',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key':
            '2f0eb52722ecbf228a4e44d9e14c600b9c4b2f65020484300839e799f58177b0',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  dynamic user(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
}

/// End thai id api Group Code

class LoginAPICall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
    String? fcmToken = '',
    String? uid = '',
    String? check = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "${escapeStringForJson(username)}",
  "password": "${escapeStringForJson(password)}",
  "fcm_token": "${escapeStringForJson(fcmToken)}",
  "uid": "${escapeStringForJson(uid)}",
  "check": "${escapeStringForJson(check)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'loginAPI',
      apiUrl: 'https://prd-proxy.swpfin.com:8096/api/login',
      callType: ApiCallType.POST,
      headers: {
        'ContentType': 'application/json; charset=utf-8,',
        'Authorization': 'Basic dGFra286MTIzNDU2',
      },
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

  static String? accessToken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
  static String? fullname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.name_th''',
      ));
  static String? employeeId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.username''',
      ));
}

class UserProfileAPICall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? project = '',
  }) async {
    final ffApiRequestBody = '''
{
  "token": "${escapeStringForJson(token)}",
  "project_name":"${escapeStringForJson(project)}" 
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'userProfileAPI',
      apiUrl: 'https://prd-proxy.swpfin.com:8096/api/user-profile',
      callType: ApiCallType.POST,
      headers: {
        'ContentType': 'application/json; charset=utf-8,',
        'Authorization': 'Basic dGFra286MTIzNDU2',
      },
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

  static String? accessToken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
  static String? fullname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.name_th''',
      ));
  static String? employeeId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.username''',
      ));
}

class CheckinStreamAPICall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'checkinStreamAPI',
      apiUrl: 'https://f0da-49-231-1-82.ngrok-free.app/api/v1/stream/checkin',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: true,
      alwaysAllowBody: false,
    );
  }

  static CheckinDataModelStruct? dataJson(dynamic response) =>
      CheckinDataModelStruct.maybeFromMap(getJsonField(
        response,
        r'''$.data''',
      ));
}

class StreamBlockfinAPICall {
  static Future<ApiCallResponse> call({
    String? refId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'streamBlockfinAPI',
      apiUrl:
          'https://f0da-49-231-1-82.ngrok-free.app/api/stream/v1/stream/blockfin',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'sessionId': refId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: true,
      alwaysAllowBody: false,
    );
  }

  static CheckinDataModelStruct? dataJson(dynamic response) =>
      CheckinDataModelStruct.maybeFromMap(getJsonField(
        response,
        r'''$.data''',
      ));
}

class GetOnboadingUrlAPICall {
  static Future<ApiCallResponse> call({
    String? customerId = '',
    String? successUrl = '',
    String? errorUrl = '',
    List<String>? ekycFlowsList,
    String? projectName = '',
  }) async {
    final ekycFlows = _serializeList(ekycFlowsList);

    final ffApiRequestBody = '''
{
  "customerId": "${escapeStringForJson(customerId)}",
  "successUrl": "${escapeStringForJson(successUrl)}",
  "errorUrl": "${escapeStringForJson(errorUrl)}",
  "ekycFlows": ${ekycFlows},
  "projectName": "${escapeStringForJson(projectName)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getOnboadingUrlAPI',
      apiUrl:
          'https://f0da-49-231-1-82.ngrok-free.app/api/blockfin/v1/get/onboarding',
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

  static String? statusLayer1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? messageLayer1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static dynamic dataJson(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  static String? refId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.refId''',
      ));
  static String? onboardingUrl(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.onboardingUrl''',
      ));
}

class CustomerSearchApiCall {
  static Future<ApiCallResponse> call({
    String? customerId = '',
    String? refId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "customer_id": "${escapeStringForJson(customerId)}",
  "ref_id": "${escapeStringForJson(refId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CustomerSearchApi',
      apiUrl: 'https://f0da-49-231-1-82.ngrok-free.app/api/customers-search',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer JhbGciOiJSUzI1NiIsImtpZ',
        'Content-Type': 'application/json',
      },
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

class OcrDocumentApiCall {
  static Future<ApiCallResponse> call({
    String? customerId = '',
    String? type = '',
    String? key = '',
    FFUploadedFile? file,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'OcrDocumentApi',
      apiUrl:
          'https://f0da-49-231-1-82.ngrok-free.app/api/process-registration',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer JhbGciOiJSUzI1NiIsImtpZ',
        'Content-Type': 'application/json',
      },
      params: {
        'file': file,
        'type': type,
        'key': key,
        'customer_id': customerId,
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
  if (item is DocumentReference) {
    return item.path;
  }
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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
