import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserAcademicAccomplishmentsRecord extends FirestoreRecord {
  UserAcademicAccomplishmentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('userAcademicAccomplishments')
          : FirebaseFirestore.instance
              .collectionGroup('userAcademicAccomplishments');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('userAcademicAccomplishments').doc(id);

  static Stream<UserAcademicAccomplishmentsRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => UserAcademicAccomplishmentsRecord.fromSnapshot(s));

  static Future<UserAcademicAccomplishmentsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UserAcademicAccomplishmentsRecord.fromSnapshot(s));

  static UserAcademicAccomplishmentsRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      UserAcademicAccomplishmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserAcademicAccomplishmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserAcademicAccomplishmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserAcademicAccomplishmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserAcademicAccomplishmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserAcademicAccomplishmentsRecordData({
  String? title,
  String? description,
  DateTime? createdDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'createdDate': createdDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserAcademicAccomplishmentsRecordDocumentEquality
    implements Equality<UserAcademicAccomplishmentsRecord> {
  const UserAcademicAccomplishmentsRecordDocumentEquality();

  @override
  bool equals(UserAcademicAccomplishmentsRecord? e1,
      UserAcademicAccomplishmentsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.createdDate == e2?.createdDate;
  }

  @override
  int hash(UserAcademicAccomplishmentsRecord? e) =>
      const ListEquality().hash([e?.title, e?.description, e?.createdDate]);

  @override
  bool isValidKey(Object? o) => o is UserAcademicAccomplishmentsRecord;
}
