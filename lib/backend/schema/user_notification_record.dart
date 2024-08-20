import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserNotificationRecord extends FirestoreRecord {
  UserNotificationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "initial_page_name" field.
  String? _initialPageName;
  String get initialPageName => _initialPageName ?? '';
  bool hasInitialPageName() => _initialPageName != null;

  // "notification_sound" field.
  String? _notificationSound;
  String get notificationSound => _notificationSound ?? '';
  bool hasNotificationSound() => _notificationSound != null;

  // "notification_text" field.
  String? _notificationText;
  String get notificationText => _notificationText ?? '';
  bool hasNotificationText() => _notificationText != null;

  // "num_sent" field.
  int? _numSent;
  int get numSent => _numSent ?? 0;
  bool hasNumSent() => _numSent != null;

  // "parameter_data" field.
  String? _parameterData;
  String get parameterData => _parameterData ?? '';
  bool hasParameterData() => _parameterData != null;

  // "sender" field.
  DocumentReference? _sender;
  DocumentReference? get sender => _sender;
  bool hasSender() => _sender != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "user_refs" field.
  String? _userRefs;
  String get userRefs => _userRefs ?? '';
  bool hasUserRefs() => _userRefs != null;

  // "notification_title" field.
  String? _notificationTitle;
  String get notificationTitle => _notificationTitle ?? '';
  bool hasNotificationTitle() => _notificationTitle != null;

  // "notification_image_url" field.
  String? _notificationImageUrl;
  String get notificationImageUrl => _notificationImageUrl ?? '';
  bool hasNotificationImageUrl() => _notificationImageUrl != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _initialPageName = snapshotData['initial_page_name'] as String?;
    _notificationSound = snapshotData['notification_sound'] as String?;
    _notificationText = snapshotData['notification_text'] as String?;
    _numSent = castToType<int>(snapshotData['num_sent']);
    _parameterData = snapshotData['parameter_data'] as String?;
    _sender = snapshotData['sender'] as DocumentReference?;
    _status = snapshotData['status'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _userRefs = snapshotData['user_refs'] as String?;
    _notificationTitle = snapshotData['notification_title'] as String?;
    _notificationImageUrl = snapshotData['notification_image_url'] as String?;
    _type = snapshotData['type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userNotification');

  static Stream<UserNotificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserNotificationRecord.fromSnapshot(s));

  static Future<UserNotificationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UserNotificationRecord.fromSnapshot(s));

  static UserNotificationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserNotificationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserNotificationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserNotificationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserNotificationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserNotificationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserNotificationRecordData({
  String? initialPageName,
  String? notificationSound,
  String? notificationText,
  int? numSent,
  String? parameterData,
  DocumentReference? sender,
  String? status,
  DateTime? timestamp,
  String? userRefs,
  String? notificationTitle,
  String? notificationImageUrl,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'initial_page_name': initialPageName,
      'notification_sound': notificationSound,
      'notification_text': notificationText,
      'num_sent': numSent,
      'parameter_data': parameterData,
      'sender': sender,
      'status': status,
      'timestamp': timestamp,
      'user_refs': userRefs,
      'notification_title': notificationTitle,
      'notification_image_url': notificationImageUrl,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserNotificationRecordDocumentEquality
    implements Equality<UserNotificationRecord> {
  const UserNotificationRecordDocumentEquality();

  @override
  bool equals(UserNotificationRecord? e1, UserNotificationRecord? e2) {
    return e1?.initialPageName == e2?.initialPageName &&
        e1?.notificationSound == e2?.notificationSound &&
        e1?.notificationText == e2?.notificationText &&
        e1?.numSent == e2?.numSent &&
        e1?.parameterData == e2?.parameterData &&
        e1?.sender == e2?.sender &&
        e1?.status == e2?.status &&
        e1?.timestamp == e2?.timestamp &&
        e1?.userRefs == e2?.userRefs &&
        e1?.notificationTitle == e2?.notificationTitle &&
        e1?.notificationImageUrl == e2?.notificationImageUrl &&
        e1?.type == e2?.type;
  }

  @override
  int hash(UserNotificationRecord? e) => const ListEquality().hash([
        e?.initialPageName,
        e?.notificationSound,
        e?.notificationText,
        e?.numSent,
        e?.parameterData,
        e?.sender,
        e?.status,
        e?.timestamp,
        e?.userRefs,
        e?.notificationTitle,
        e?.notificationImageUrl,
        e?.type
      ]);

  @override
  bool isValidKey(Object? o) => o is UserNotificationRecord;
}
