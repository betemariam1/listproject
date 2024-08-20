import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersCertifiedMetricsRecord extends FirestoreRecord {
  UsersCertifiedMetricsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "selectedMetrics" field.
  bool? _selectedMetrics;
  bool get selectedMetrics => _selectedMetrics ?? false;
  bool hasSelectedMetrics() => _selectedMetrics != null;

  // "metrics" field.
  CertifiedMetricsDataStruct? _metrics;
  CertifiedMetricsDataStruct get metrics =>
      _metrics ?? CertifiedMetricsDataStruct();
  bool hasMetrics() => _metrics != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _selectedMetrics = snapshotData['selectedMetrics'] as bool?;
    _metrics = CertifiedMetricsDataStruct.maybeFromMap(snapshotData['metrics']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('usersCertifiedMetrics')
          : FirebaseFirestore.instance.collectionGroup('usersCertifiedMetrics');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('usersCertifiedMetrics').doc(id);

  static Stream<UsersCertifiedMetricsRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => UsersCertifiedMetricsRecord.fromSnapshot(s));

  static Future<UsersCertifiedMetricsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UsersCertifiedMetricsRecord.fromSnapshot(s));

  static UsersCertifiedMetricsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsersCertifiedMetricsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersCertifiedMetricsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersCertifiedMetricsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersCertifiedMetricsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersCertifiedMetricsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersCertifiedMetricsRecordData({
  DateTime? createdDate,
  bool? selectedMetrics,
  CertifiedMetricsDataStruct? metrics,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdDate': createdDate,
      'selectedMetrics': selectedMetrics,
      'metrics': CertifiedMetricsDataStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "metrics" field.
  addCertifiedMetricsDataStructData(firestoreData, metrics, 'metrics');

  return firestoreData;
}

class UsersCertifiedMetricsRecordDocumentEquality
    implements Equality<UsersCertifiedMetricsRecord> {
  const UsersCertifiedMetricsRecordDocumentEquality();

  @override
  bool equals(
      UsersCertifiedMetricsRecord? e1, UsersCertifiedMetricsRecord? e2) {
    return e1?.createdDate == e2?.createdDate &&
        e1?.selectedMetrics == e2?.selectedMetrics &&
        e1?.metrics == e2?.metrics;
  }

  @override
  int hash(UsersCertifiedMetricsRecord? e) => const ListEquality()
      .hash([e?.createdDate, e?.selectedMetrics, e?.metrics]);

  @override
  bool isValidKey(Object? o) => o is UsersCertifiedMetricsRecord;
}
