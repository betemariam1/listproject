// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VideoDimensionsStruct extends FFFirebaseStruct {
  VideoDimensionsStruct({
    double? width,
    double? height,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _width = width,
        _height = height,
        super(firestoreUtilData);

  // "width" field.
  double? _width;
  double get width => _width ?? 0.0;
  set width(double? val) => _width = val;

  void incrementWidth(double amount) => width = width + amount;

  bool hasWidth() => _width != null;

  // "height" field.
  double? _height;
  double get height => _height ?? 0.0;
  set height(double? val) => _height = val;

  void incrementHeight(double amount) => height = height + amount;

  bool hasHeight() => _height != null;

  static VideoDimensionsStruct fromMap(Map<String, dynamic> data) =>
      VideoDimensionsStruct(
        width: castToType<double>(data['width']),
        height: castToType<double>(data['height']),
      );

  static VideoDimensionsStruct? maybeFromMap(dynamic data) => data is Map
      ? VideoDimensionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'width': _width,
        'height': _height,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'width': serializeParam(
          _width,
          ParamType.double,
        ),
        'height': serializeParam(
          _height,
          ParamType.double,
        ),
      }.withoutNulls;

  static VideoDimensionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      VideoDimensionsStruct(
        width: deserializeParam(
          data['width'],
          ParamType.double,
          false,
        ),
        height: deserializeParam(
          data['height'],
          ParamType.double,
          false,
        ),
      );

  static VideoDimensionsStruct fromAlgoliaData(Map<String, dynamic> data) =>
      VideoDimensionsStruct(
        width: convertAlgoliaParam(
          data['width'],
          ParamType.double,
          false,
        ),
        height: convertAlgoliaParam(
          data['height'],
          ParamType.double,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'VideoDimensionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VideoDimensionsStruct &&
        width == other.width &&
        height == other.height;
  }

  @override
  int get hashCode => const ListEquality().hash([width, height]);
}

VideoDimensionsStruct createVideoDimensionsStruct({
  double? width,
  double? height,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VideoDimensionsStruct(
      width: width,
      height: height,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VideoDimensionsStruct? updateVideoDimensionsStruct(
  VideoDimensionsStruct? videoDimensions, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    videoDimensions
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVideoDimensionsStructData(
  Map<String, dynamic> firestoreData,
  VideoDimensionsStruct? videoDimensions,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (videoDimensions == null) {
    return;
  }
  if (videoDimensions.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && videoDimensions.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final videoDimensionsData =
      getVideoDimensionsFirestoreData(videoDimensions, forFieldValue);
  final nestedData =
      videoDimensionsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = videoDimensions.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVideoDimensionsFirestoreData(
  VideoDimensionsStruct? videoDimensions, [
  bool forFieldValue = false,
]) {
  if (videoDimensions == null) {
    return {};
  }
  final firestoreData = mapToFirestore(videoDimensions.toMap());

  // Add any Firestore field values
  videoDimensions.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVideoDimensionsListFirestoreData(
  List<VideoDimensionsStruct>? videoDimensionss,
) =>
    videoDimensionss
        ?.map((e) => getVideoDimensionsFirestoreData(e, true))
        .toList() ??
    [];
