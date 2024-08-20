import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmailsRecord extends FirestoreRecord {
  EmailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  bool hasUnit() => _unit != null;

  // "value" field.
  String? _value;
  String get value => _value ?? '';
  bool hasValue() => _value != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _unit = snapshotData['unit'] as String?;
    _value = snapshotData['value'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('emails')
          : FirebaseFirestore.instance.collectionGroup('emails');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('emails').doc(id);

  static Stream<EmailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmailsRecord.fromSnapshot(s));

  static Future<EmailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmailsRecord.fromSnapshot(s));

  static EmailsRecord fromSnapshot(DocumentSnapshot snapshot) => EmailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmailsRecordData({
  String? name,
  String? unit,
  String? value,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'unit': unit,
      'value': value,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmailsRecordDocumentEquality implements Equality<EmailsRecord> {
  const EmailsRecordDocumentEquality();

  @override
  bool equals(EmailsRecord? e1, EmailsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.unit == e2?.unit &&
        e1?.value == e2?.value;
  }

  @override
  int hash(EmailsRecord? e) =>
      const ListEquality().hash([e?.name, e?.unit, e?.value]);

  @override
  bool isValidKey(Object? o) => o is EmailsRecord;
}
