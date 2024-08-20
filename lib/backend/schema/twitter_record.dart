import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TwitterRecord extends FirestoreRecord {
  TwitterRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "profile_image_url" field.
  String? _profileImageUrl;
  String get profileImageUrl => _profileImageUrl ?? '';
  bool hasProfileImageUrl() => _profileImageUrl != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "tweetID" field.
  String? _tweetID;
  String get tweetID => _tweetID ?? '';
  bool hasTweetID() => _tweetID != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "video_media" field.
  List<VideoMediaStruct>? _videoMedia;
  List<VideoMediaStruct> get videoMedia => _videoMedia ?? const [];
  bool hasVideoMedia() => _videoMedia != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "sportType" field.
  String? _sportType;
  String get sportType => _sportType ?? '';
  bool hasSportType() => _sportType != null;

  // "twitterUserReference" field.
  DocumentReference? _twitterUserReference;
  DocumentReference? get twitterUserReference => _twitterUserReference;
  bool hasTwitterUserReference() => _twitterUserReference != null;

  // "twitter_id" field.
  String? _twitterId;
  String get twitterId => _twitterId ?? '';
  bool hasTwitterId() => _twitterId != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "playerSelectedSport" field.
  String? _playerSelectedSport;
  String get playerSelectedSport => _playerSelectedSport ?? '';
  bool hasPlayerSelectedSport() => _playerSelectedSport != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _profileImageUrl = snapshotData['profile_image_url'] as String?;
    _text = snapshotData['text'] as String?;
    _tweetID = snapshotData['tweetID'] as String?;
    _username = snapshotData['username'] as String?;
    _videoMedia = getStructList(
      snapshotData['video_media'],
      VideoMediaStruct.fromMap,
    );
    _createdAt = snapshotData['created_at'] as DateTime?;
    _description = snapshotData['description'] as String?;
    _id = snapshotData['id'] as String?;
    _sportType = snapshotData['sportType'] as String?;
    _twitterUserReference =
        snapshotData['twitterUserReference'] as DocumentReference?;
    _twitterId = snapshotData['twitter_id'] as String?;
    _uid = snapshotData['uid'] as String?;
    _playerSelectedSport = snapshotData['playerSelectedSport'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Twitter');

  static Stream<TwitterRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TwitterRecord.fromSnapshot(s));

  static Future<TwitterRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TwitterRecord.fromSnapshot(s));

  static TwitterRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TwitterRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TwitterRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TwitterRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TwitterRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TwitterRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTwitterRecordData({
  String? name,
  String? profileImageUrl,
  String? text,
  String? tweetID,
  String? username,
  DateTime? createdAt,
  String? description,
  String? id,
  String? sportType,
  DocumentReference? twitterUserReference,
  String? twitterId,
  String? uid,
  String? playerSelectedSport,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'profile_image_url': profileImageUrl,
      'text': text,
      'tweetID': tweetID,
      'username': username,
      'created_at': createdAt,
      'description': description,
      'id': id,
      'sportType': sportType,
      'twitterUserReference': twitterUserReference,
      'twitter_id': twitterId,
      'uid': uid,
      'playerSelectedSport': playerSelectedSport,
    }.withoutNulls,
  );

  return firestoreData;
}

class TwitterRecordDocumentEquality implements Equality<TwitterRecord> {
  const TwitterRecordDocumentEquality();

  @override
  bool equals(TwitterRecord? e1, TwitterRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.profileImageUrl == e2?.profileImageUrl &&
        e1?.text == e2?.text &&
        e1?.tweetID == e2?.tweetID &&
        e1?.username == e2?.username &&
        listEquality.equals(e1?.videoMedia, e2?.videoMedia) &&
        e1?.createdAt == e2?.createdAt &&
        e1?.description == e2?.description &&
        e1?.id == e2?.id &&
        e1?.sportType == e2?.sportType &&
        e1?.twitterUserReference == e2?.twitterUserReference &&
        e1?.twitterId == e2?.twitterId &&
        e1?.uid == e2?.uid &&
        e1?.playerSelectedSport == e2?.playerSelectedSport;
  }

  @override
  int hash(TwitterRecord? e) => const ListEquality().hash([
        e?.name,
        e?.profileImageUrl,
        e?.text,
        e?.tweetID,
        e?.username,
        e?.videoMedia,
        e?.createdAt,
        e?.description,
        e?.id,
        e?.sportType,
        e?.twitterUserReference,
        e?.twitterId,
        e?.uid,
        e?.playerSelectedSport
      ]);

  @override
  bool isValidKey(Object? o) => o is TwitterRecord;
}
