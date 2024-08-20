import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SignupCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? pwd = '',
    String? uid = '',
    String? accountType = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "pwd": "${pwd}",
  "uid": "${uid}",
  "accountType": "${accountType}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signup',
      apiUrl: 'https://academic-api.onrender.com/signup',
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

class CreateQRCodeCall {
  static Future<ApiCallResponse> call({
    String? campID = '',
    String? userUid = '',
    String? firstName = '',
    String? lastName = '',
  }) async {
    final ffApiRequestBody = '''
{
  "campID": "${campID}",
  "userUid": "${userUid}",
  "firstName": "${firstName}",
  "lastName": "${lastName}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createQRCode',
      apiUrl: 'https://tourism-api-zrls.onrender.com/createQRCode',
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

  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  static dynamic url(dynamic response) => getJsonField(
        response,
        r'''$.QRURL''',
      );
}

class CreateSearchUserCall {
  static Future<ApiCallResponse> call({
    String? bio = '',
    String? certifiedBattingEV = '',
    String? certifiedCBVeloAverage = '',
    String? certifiedCBVeloHigh = '',
    String? certifiedCHVeloAverage = '',
    String? certifiedCHVeloHigh = '',
    String? certifiedFB2SVeloAverage = '',
    String? certifiedFB4SVeloHigh = '',
    String? certifiedFB2SVeloHigh = '',
    String? certifiedFB4SVeloAverage = '',
    String? certifiedGPA = '',
    String? certifiedProShuttleTime = '',
    String? certifiedSLVeloAverage = '',
    String? certifiedSLVeloHigh = '',
    String? email = '',
    String? firstName = '',
    String? lastName = '',
    String? uid = '',
    String? state = '',
    String? throw1 = '',
    String? username = '',
    String? userrole = '',
    String? weight = '',
    String? graduationYear = '',
    String? heightFeet = '',
    String? heightInches = '',
    String? highSchool = '',
    String? primaryPosition = '',
    String? secondaryPosition = '',
    String? secondaryPosition2 = '',
    String? selfReportedBattingEV = '',
    String? selfReportedCBVeloAverage = '',
    String? selfReportedCHVeloAverage = '',
    String? selfReportedCBVeloHigh = '',
    String? selfReportedCHVeloHigh = '',
    String? selfReportedFB2SVeloAverage = '',
    String? selfReportedFB2SVeloHigh = '',
    String? selfReportedFB4SVeloAverage = '',
    String? selfReportedFB4SVeloHigh = '',
    String? selfReportedGPA = '',
    String? selfReportedProShuttleTime = '',
    String? selfReportedSLVeloAverage = '',
    String? selfReportedSLVeloHigh = '',
    String? selfReportedTime60 = '',
    String? bat = '',
    String? photoUrl = '',
    String? displayName = '',
    String? phoneNumber = '',
    String? createdBy = '',
    String? highSchoolTranscript = '',
    String? schoolProfile = '',
    String? city = '',
    String? certifiedTime60 = '',
    String? selfReportedWeightedGPA = '',
    String? selfReportedUnWeightedGPA = '',
    String? certifiedWeightedGPA = '',
    String? certifiedUnWeightedGPA = '',
    String? playerSelectedSport = '',
    String? countryCode = '',
    String? selfReportedFTOnMound = '',
    String? certifiedFTOnMound = '',
    String? selfReportedFTOffMound = '',
    String? certifiedFTOffMound = '',
    String? selfReportedACTTotal = '',
    String? certifiedACTTotal = '',
    String? selfReportedSATTotal = '',
    String? certifiedSATTotal = '',
    bool? isTakingACT,
    bool? isTakinSAT,
    bool? searchApproved = true,
    String? selfReportedPopTime = '',
  }) async {
    final ffApiRequestBody = '''
{
  "firebaseRecord": {
  "isTakingACT":${isTakingACT},
  "isTakingSAT":${isTakinSAT},
  "searchApproved":${searchApproved},
  "bio": "${bio}",
  "selfReportedPopTime": "${selfReportedPopTime}",
  "photo_url": "${photoUrl}",
  "display_name": "${displayName}",
  "phone_number": "${phoneNumber}",
  "certifiedBattingEV": "${certifiedBattingEV}",
  "certifiedCBVeloAverage": "${certifiedCBVeloAverage}",
  "certifiedCBVeloHigh": "${certifiedCBVeloHigh}",
  "certifiedCHVeloAverage": "${certifiedCHVeloAverage}",
  "certifiedCHVeloHigh": "${certifiedCHVeloHigh}",
  "certifiedFB2SVeloAverage": "${certifiedFB2SVeloAverage}",
  "certifiedFB4SVeloHigh": "${certifiedFB4SVeloHigh}",
  "certifiedFB2SVeloHigh": "${certifiedFB2SVeloHigh}",
  "certifiedFB4SVeloAverage": "${certifiedFB4SVeloAverage}",
  "certifiedGPA": "${certifiedGPA}",
  "certifiedProShuttleTime": "${certifiedProShuttleTime}",
  "certifiedSLVeloAverage": "${certifiedSLVeloAverage}",
  "certifiedSLVeloHigh": "${certifiedSLVeloHigh}",
  "email": "${email}",
  "firstName": "${firstName}",
  "lastName": "${lastName}",
  "uid": "${uid}",
  "state": "${state}",
  "throw1": "${throw1}",
  "username": "${username}",
  "userrole": "${userrole}",
  "weight": "${weight}",
  "graduationYear": "${graduationYear}",
  "heightFeet": "${heightFeet}",
  "heightInches": "${heightInches}",
  "highSchool": "${highSchool}",
  "primaryPosition": "${primaryPosition}",
  "secondaryPosition": "${secondaryPosition}",
  "secondaryPosition2": "${secondaryPosition2}",
  "selfReportedBattingEV": "${selfReportedBattingEV}",
  "selfReportedCBVeloAverage": "${selfReportedCBVeloAverage}",
  "selfReportedCHVeloAverage": "${selfReportedCHVeloAverage}",
  "selfReportedCBVeloHigh": "${selfReportedCBVeloHigh}",
  "selfReportedCHVeloHigh": "${selfReportedCHVeloHigh}",
  "selfReportedFB2SVeloAverage": "${selfReportedFB2SVeloAverage}",
  "selfReportedFB2SVeloHigh": "${selfReportedFB2SVeloHigh}",
  "selfReportedFB4SVeloAverage": "${selfReportedFB4SVeloAverage}",
  "selfReportedFB4SVeloHigh": "${selfReportedFB4SVeloHigh}",
  "selfReportedGPA": "${selfReportedGPA}",
  "selfReportedProShuttleTime": "${selfReportedProShuttleTime}",
  "selfReportedSLVeloAverage": "${selfReportedSLVeloAverage}",
  "selfReportedSLVeloHigh": "${selfReportedSLVeloHigh}",
  "selfReportedTime60": "${selfReportedTime60}",
  "bat": "${bat}",
  "createdBy": "${createdBy}",
  "highSchoolTranscript": "${highSchoolTranscript}",
  "schoolProfile": "${schoolProfile}",
  "city": "${city}",
  "certifiedTime60": "${certifiedTime60}",
  "selfReportedWeightedGPA": "${selfReportedWeightedGPA}",
  "selfReportedUnWeightedGPA": "${selfReportedUnWeightedGPA}",
  "certifiedWeightedGPA": "${certifiedWeightedGPA}",
  "certifiedUnWeightedGPA": "${certifiedUnWeightedGPA}",
  "playerSelectedSport": "${playerSelectedSport}",
  "countryCode": "${countryCode}",
  "selfReportedFTOnMound": "${selfReportedFTOnMound}",
  "certifiedFTOnMound": "${certifiedFTOnMound}",
  "selfReportedFTOffMound": "${selfReportedFTOffMound}",
  "certifiedFTOffMound": "${certifiedFTOffMound}",
  "selfReportedACTTotal": "${selfReportedACTTotal}",
  "certifiedACTTotal": "${certifiedACTTotal}",
  "selfReportedSATTotal": "${selfReportedSATTotal}",
  "certifiedSATTotal": "${certifiedSATTotal}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createSearchUser',
      apiUrl: 'https://tourism-api-zrls.onrender.com/create_search_user',
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

class CreateNewUserCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? pwd = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "pwd": "${pwd}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createNewUser',
      apiUrl: 'https://tourism-api-zrls.onrender.com/createUser',
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

  static String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uid''',
      ));
}

class FetchTweetOembedApiCall {
  static Future<ApiCallResponse> call({
    String? tweetID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'fetchTweetOembedApi',
      apiUrl:
          'https://us-central1-academic-ballers.cloudfunctions.net/expressApi',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'tweetID': tweetID,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.author_name''',
      ));
  static String? autorurl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.author_url''',
      ));
  static String? html(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.html''',
      ));
}

class PaymentlinkcertifiedCall {
  static Future<ApiCallResponse> call({
    String? userUID = '',
    String? productID = '',
    String? productName = '',
    double? amount,
    String? userEmail = '',
    String? discountID = '',
    String? redirectURL = '',
  }) async {
    final ffApiRequestBody = '''
{
  "uid": "${userUID}",
  "productID": "${productID}",
  "productName": "${productName}",
  "amount": ${amount},
  "userEmail": "${userEmail}",
  "discountID": "${discountID}",
  "redirectURL":"${redirectURL}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'paymentlinkcertified',
      apiUrl: 'https://tourism-api-zrls.onrender.com/payment_link_certified',
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

  static String? paymentLink(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.payment_link_info''',
      ));
}

class TinyUrlCall {
  static Future<ApiCallResponse> call({
    String? key =
        's8QipuzekJ6hBO0NiDtDcifrpEwoxHJ69y8yC2xcPrFSnmkH31HRtniaUfVW',
    String? url = '',
  }) async {
    final ffApiRequestBody = '''
{
  "url": "${url}",
  "domain": "tinyurl.com",
  "description": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'tinyUrl',
      apiUrl: 'https://api.tinyurl.com/create?api_token=${key}',
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

  static String? tinyUrl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.tiny_url''',
      ));
}

class EmailVirtualCampCall {
  static Future<ApiCallResponse> call({
    String? campID = '',
    String? userID = '',
    String? csvURL = '',
    String? campUserRefUID = '',
  }) async {
    final ffApiRequestBody = '''
{
  "campUID": "${campID}",
  "userUID": "${userID}",
  "csvURL": "${csvURL}",
  "campUserRefUID": "${campUserRefUID}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'emailVirtualCamp',
      apiUrl: 'https://tourism-api-zrls.onrender.com/emailVirtualCamp',
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

class CreateEmailCall {
  static Future<ApiCallResponse> call({
    String? uid = '',
    String? name = '',
  }) async {
    final ffApiRequestBody = '''
{
  "uid": "${uid}",
  "name": "${name}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createEmail',
      apiUrl: 'https://tourism-api-zrls.onrender.com/create_email',
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

class SendemailCall {
  static Future<ApiCallResponse> call({
    String? senderID = '',
    String? to = '',
    String? message = '',
    String? subject = '',
  }) async {
    final ffApiRequestBody = '''
{
  "inboxID": "${senderID}",
  "to": "${to}",
  "message": "${message}",
  "subject": "${subject}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendemail',
      apiUrl: 'https://tourism-api-zrls.onrender.com/send_email',
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

class GetVideoThumbnailCall {
  static Future<ApiCallResponse> call({
    String? video = '',
  }) async {
    final ffApiRequestBody = '''
{
  "videoUrl": "${video}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getVideoThumbnail',
      apiUrl:
          'https://us-central1-academic-ballers.cloudfunctions.net/videoThumbnail',
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

  static String? thumbnail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.thumbnailUrl''',
      ));
}

class TwitterAuthCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'twitterAuth',
      apiUrl: 'https://twitter-passport.onrender.com/login/1',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
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
