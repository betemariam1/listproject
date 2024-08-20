import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportsRecord extends FirestoreRecord {
  ReportsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "reportedPost" field.
  DocumentReference? _reportedPost;
  DocumentReference? get reportedPost => _reportedPost;
  bool hasReportedPost() => _reportedPost != null;

  // "reportReasons" field.
  List<String>? _reportReasons;
  List<String> get reportReasons => _reportReasons ?? const [];
  bool hasReportReasons() => _reportReasons != null;

  // "reportTime" field.
  DateTime? _reportTime;
  DateTime? get reportTime => _reportTime;
  bool hasReportTime() => _reportTime != null;

  // "reportingUser" field.
  DocumentReference? _reportingUser;
  DocumentReference? get reportingUser => _reportingUser;
  bool hasReportingUser() => _reportingUser != null;

  // "reportMessage" field.
  String? _reportMessage;
  String get reportMessage => _reportMessage ?? '';
  bool hasReportMessage() => _reportMessage != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "removed" field.
  bool? _removed;
  bool get removed => _removed ?? false;
  bool hasRemoved() => _removed != null;

  void _initializeFields() {
    _reportedPost = snapshotData['reportedPost'] as DocumentReference?;
    _reportReasons = getDataList(snapshotData['reportReasons']);
    _reportTime = snapshotData['reportTime'] as DateTime?;
    _reportingUser = snapshotData['reportingUser'] as DocumentReference?;
    _reportMessage = snapshotData['reportMessage'] as String?;
    _status = snapshotData['status'] as bool?;
    _removed = snapshotData['removed'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Reports');

  static Stream<ReportsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReportsRecord.fromSnapshot(s));

  static Future<ReportsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReportsRecord.fromSnapshot(s));

  static ReportsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReportsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReportsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReportsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReportsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReportsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReportsRecordData({
  DocumentReference? reportedPost,
  DateTime? reportTime,
  DocumentReference? reportingUser,
  String? reportMessage,
  bool? status,
  bool? removed,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'reportedPost': reportedPost,
      'reportTime': reportTime,
      'reportingUser': reportingUser,
      'reportMessage': reportMessage,
      'status': status,
      'removed': removed,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReportsRecordDocumentEquality implements Equality<ReportsRecord> {
  const ReportsRecordDocumentEquality();

  @override
  bool equals(ReportsRecord? e1, ReportsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.reportedPost == e2?.reportedPost &&
        listEquality.equals(e1?.reportReasons, e2?.reportReasons) &&
        e1?.reportTime == e2?.reportTime &&
        e1?.reportingUser == e2?.reportingUser &&
        e1?.reportMessage == e2?.reportMessage &&
        e1?.status == e2?.status &&
        e1?.removed == e2?.removed;
  }

  @override
  int hash(ReportsRecord? e) => const ListEquality().hash([
        e?.reportedPost,
        e?.reportReasons,
        e?.reportTime,
        e?.reportingUser,
        e?.reportMessage,
        e?.status,
        e?.removed
      ]);

  @override
  bool isValidKey(Object? o) => o is ReportsRecord;
}
