import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SignedUpPlayersRecord extends FirestoreRecord {
  SignedUpPlayersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "playerEmail" field.
  String? _playerEmail;
  String get playerEmail => _playerEmail ?? '';
  bool hasPlayerEmail() => _playerEmail != null;

  // "paymentStatus" field.
  bool? _paymentStatus;
  bool get paymentStatus => _paymentStatus ?? false;
  bool hasPaymentStatus() => _paymentStatus != null;

  // "parentEmail" field.
  String? _parentEmail;
  String get parentEmail => _parentEmail ?? '';
  bool hasParentEmail() => _parentEmail != null;

  // "parentFirstName" field.
  String? _parentFirstName;
  String get parentFirstName => _parentFirstName ?? '';
  bool hasParentFirstName() => _parentFirstName != null;

  // "parentPhoneNumber" field.
  String? _parentPhoneNumber;
  String get parentPhoneNumber => _parentPhoneNumber ?? '';
  bool hasParentPhoneNumber() => _parentPhoneNumber != null;

  // "parentLastName" field.
  String? _parentLastName;
  String get parentLastName => _parentLastName ?? '';
  bool hasParentLastName() => _parentLastName != null;

  // "signatureText" field.
  String? _signatureText;
  String get signatureText => _signatureText ?? '';
  bool hasSignatureText() => _signatureText != null;

  // "userCampRef" field.
  DocumentReference? _userCampRef;
  DocumentReference? get userCampRef => _userCampRef;
  bool hasUserCampRef() => _userCampRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _playerEmail = snapshotData['playerEmail'] as String?;
    _paymentStatus = snapshotData['paymentStatus'] as bool?;
    _parentEmail = snapshotData['parentEmail'] as String?;
    _parentFirstName = snapshotData['parentFirstName'] as String?;
    _parentPhoneNumber = snapshotData['parentPhoneNumber'] as String?;
    _parentLastName = snapshotData['parentLastName'] as String?;
    _signatureText = snapshotData['signatureText'] as String?;
    _userCampRef = snapshotData['userCampRef'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('signedUpPlayers')
          : FirebaseFirestore.instance.collectionGroup('signedUpPlayers');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('signedUpPlayers').doc(id);

  static Stream<SignedUpPlayersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SignedUpPlayersRecord.fromSnapshot(s));

  static Future<SignedUpPlayersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SignedUpPlayersRecord.fromSnapshot(s));

  static SignedUpPlayersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SignedUpPlayersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SignedUpPlayersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SignedUpPlayersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SignedUpPlayersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SignedUpPlayersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSignedUpPlayersRecordData({
  DocumentReference? userRef,
  DateTime? createdDate,
  String? playerEmail,
  bool? paymentStatus,
  String? parentEmail,
  String? parentFirstName,
  String? parentPhoneNumber,
  String? parentLastName,
  String? signatureText,
  DocumentReference? userCampRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'createdDate': createdDate,
      'playerEmail': playerEmail,
      'paymentStatus': paymentStatus,
      'parentEmail': parentEmail,
      'parentFirstName': parentFirstName,
      'parentPhoneNumber': parentPhoneNumber,
      'parentLastName': parentLastName,
      'signatureText': signatureText,
      'userCampRef': userCampRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class SignedUpPlayersRecordDocumentEquality
    implements Equality<SignedUpPlayersRecord> {
  const SignedUpPlayersRecordDocumentEquality();

  @override
  bool equals(SignedUpPlayersRecord? e1, SignedUpPlayersRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.createdDate == e2?.createdDate &&
        e1?.playerEmail == e2?.playerEmail &&
        e1?.paymentStatus == e2?.paymentStatus &&
        e1?.parentEmail == e2?.parentEmail &&
        e1?.parentFirstName == e2?.parentFirstName &&
        e1?.parentPhoneNumber == e2?.parentPhoneNumber &&
        e1?.parentLastName == e2?.parentLastName &&
        e1?.signatureText == e2?.signatureText &&
        e1?.userCampRef == e2?.userCampRef;
  }

  @override
  int hash(SignedUpPlayersRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.createdDate,
        e?.playerEmail,
        e?.paymentStatus,
        e?.parentEmail,
        e?.parentFirstName,
        e?.parentPhoneNumber,
        e?.parentLastName,
        e?.signatureText,
        e?.userCampRef
      ]);

  @override
  bool isValidKey(Object? o) => o is SignedUpPlayersRecord;
}
