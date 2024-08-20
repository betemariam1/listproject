// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VideoMediaStruct extends FFFirebaseStruct {
  VideoMediaStruct({
    String? previewImageUrl,
    String? url,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _previewImageUrl = previewImageUrl,
        _url = url,
        super(firestoreUtilData);

  // "preview_image_url" field.
  String? _previewImageUrl;
  String get previewImageUrl => _previewImageUrl ?? '';
  set previewImageUrl(String? val) => _previewImageUrl = val;

  bool hasPreviewImageUrl() => _previewImageUrl != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;

  bool hasUrl() => _url != null;

  static VideoMediaStruct fromMap(Map<String, dynamic> data) =>
      VideoMediaStruct(
        previewImageUrl: data['preview_image_url'] as String?,
        url: data['url'] as String?,
      );

  static VideoMediaStruct? maybeFromMap(dynamic data) => data is Map
      ? VideoMediaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'preview_image_url': _previewImageUrl,
        'url': _url,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'preview_image_url': serializeParam(
          _previewImageUrl,
          ParamType.String,
        ),
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
      }.withoutNulls;

  static VideoMediaStruct fromSerializableMap(Map<String, dynamic> data) =>
      VideoMediaStruct(
        previewImageUrl: deserializeParam(
          data['preview_image_url'],
          ParamType.String,
          false,
        ),
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
      );

  static VideoMediaStruct fromAlgoliaData(Map<String, dynamic> data) =>
      VideoMediaStruct(
        previewImageUrl: convertAlgoliaParam(
          data['preview_image_url'],
          ParamType.String,
          false,
        ),
        url: convertAlgoliaParam(
          data['url'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'VideoMediaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VideoMediaStruct &&
        previewImageUrl == other.previewImageUrl &&
        url == other.url;
  }

  @override
  int get hashCode => const ListEquality().hash([previewImageUrl, url]);
}

VideoMediaStruct createVideoMediaStruct({
  String? previewImageUrl,
  String? url,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VideoMediaStruct(
      previewImageUrl: previewImageUrl,
      url: url,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VideoMediaStruct? updateVideoMediaStruct(
  VideoMediaStruct? videoMedia, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    videoMedia
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVideoMediaStructData(
  Map<String, dynamic> firestoreData,
  VideoMediaStruct? videoMedia,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (videoMedia == null) {
    return;
  }
  if (videoMedia.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && videoMedia.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final videoMediaData = getVideoMediaFirestoreData(videoMedia, forFieldValue);
  final nestedData = videoMediaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = videoMedia.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVideoMediaFirestoreData(
  VideoMediaStruct? videoMedia, [
  bool forFieldValue = false,
]) {
  if (videoMedia == null) {
    return {};
  }
  final firestoreData = mapToFirestore(videoMedia.toMap());

  // Add any Firestore field values
  videoMedia.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVideoMediaListFirestoreData(
  List<VideoMediaStruct>? videoMedias,
) =>
    videoMedias?.map((e) => getVideoMediaFirestoreData(e, true)).toList() ?? [];
