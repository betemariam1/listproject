import '/backend/schema/structs/index.dart';

class FetchTweetOembedApiCloudFunctionCallResponse {
  FetchTweetOembedApiCloudFunctionCallResponse({
    this.errorCode,
    this.succeeded,
    this.jsonBody,
  });
  String? errorCode;
  bool? succeeded;
  dynamic jsonBody;
}
