import 'dart:convert';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

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
      apiUrl: 'https://dfeb1281ab00.ngrok-free.app/api/v1/stream/checkin',
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
          'https://dfeb1281ab00.ngrok-free.app/api/stream/v1/stream/blockfin',
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
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getOnboadingUrlAPI',
      apiUrl: 'https://dfeb1281ab00.ngrok-free.app/api/v1/verify/customer',
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
