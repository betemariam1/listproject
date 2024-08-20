import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ThreadsRecord extends FirestoreRecord {
  ThreadsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "time_posted" field.
  DateTime? _timePosted;
  DateTime? get timePosted => _timePosted;
  bool hasTimePosted() => _timePosted != null;

  // "threads_content" field.
  String? _threadsContent;
  String get threadsContent => _threadsContent ?? '';
  bool hasThreadsContent() => _threadsContent != null;

  // "threads_photo" field.
  String? _threadsPhoto;
  String get threadsPhoto => _threadsPhoto ?? '';
  bool hasThreadsPhoto() => _threadsPhoto != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "liked_by" field.
  List<DocumentReference>? _likedBy;
  List<DocumentReference> get likedBy => _likedBy ?? const [];
  bool hasLikedBy() => _likedBy != null;

  // "replies_by" field.
  List<DocumentReference>? _repliesBy;
  List<DocumentReference> get repliesBy => _repliesBy ?? const [];
  bool hasRepliesBy() => _repliesBy != null;

  // "num_reply" field.
  int? _numReply;
  int get numReply => _numReply ?? 0;
  bool hasNumReply() => _numReply != null;

  // "num_like" field.
  int? _numLike;
  int get numLike => _numLike ?? 0;
  bool hasNumLike() => _numLike != null;

  // "replied_avator" field.
  List<String>? _repliedAvator;
  List<String> get repliedAvator => _repliedAvator ?? const [];
  bool hasRepliedAvator() => _repliedAvator != null;

  // "threads_video" field.
  String? _threadsVideo;
  String get threadsVideo => _threadsVideo ?? '';
  bool hasThreadsVideo() => _threadsVideo != null;

  // "thread_replies" field.
  List<DocumentReference>? _threadReplies;
  List<DocumentReference> get threadReplies => _threadReplies ?? const [];
  bool hasThreadReplies() => _threadReplies != null;

  // "adminPost" field.
  bool? _adminPost;
  bool get adminPost => _adminPost ?? false;
  bool hasAdminPost() => _adminPost != null;

  // "userImageUrl" field.
  String? _userImageUrl;
  String get userImageUrl => _userImageUrl ?? '';
  bool hasUserImageUrl() => _userImageUrl != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "userRole" field.
  String? _userRole;
  String get userRole => _userRole ?? '';
  bool hasUserRole() => _userRole != null;

  // "thumbnailImage" field.
  String? _thumbnailImage;
  String get thumbnailImage => _thumbnailImage ?? '';
  bool hasThumbnailImage() => _thumbnailImage != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "youtubeLink" field.
  String? _youtubeLink;
  String get youtubeLink => _youtubeLink ?? '';
  bool hasYoutubeLink() => _youtubeLink != null;

  // "postedBy" field.
  String? _postedBy;
  String get postedBy => _postedBy ?? '';
  bool hasPostedBy() => _postedBy != null;

  // "twitterUserRef" field.
  DocumentReference? _twitterUserRef;
  DocumentReference? get twitterUserRef => _twitterUserRef;
  bool hasTwitterUserRef() => _twitterUserRef != null;

  // "video_media" field.
  List<VideoMediaStruct>? _videoMedia;
  List<VideoMediaStruct> get videoMedia => _videoMedia ?? const [];
  bool hasVideoMedia() => _videoMedia != null;

  // "playerSelectedSport" field.
  String? _playerSelectedSport;
  String get playerSelectedSport => _playerSelectedSport ?? '';
  bool hasPlayerSelectedSport() => _playerSelectedSport != null;

  // "video_dimensions" field.
  VideoDimensionsStruct? _videoDimensions;
  VideoDimensionsStruct get videoDimensions =>
      _videoDimensions ?? VideoDimensionsStruct();
  bool hasVideoDimensions() => _videoDimensions != null;

  void _initializeFields() {
    _timePosted = snapshotData['time_posted'] as DateTime?;
    _threadsContent = snapshotData['threads_content'] as String?;
    _threadsPhoto = snapshotData['threads_photo'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _likedBy = getDataList(snapshotData['liked_by']);
    _repliesBy = getDataList(snapshotData['replies_by']);
    _numReply = castToType<int>(snapshotData['num_reply']);
    _numLike = castToType<int>(snapshotData['num_like']);
    _repliedAvator = getDataList(snapshotData['replied_avator']);
    _threadsVideo = snapshotData['threads_video'] as String?;
    _threadReplies = getDataList(snapshotData['thread_replies']);
    _adminPost = snapshotData['adminPost'] as bool?;
    _userImageUrl = snapshotData['userImageUrl'] as String?;
    _userName = snapshotData['userName'] as String?;
    _userRole = snapshotData['userRole'] as String?;
    _thumbnailImage = snapshotData['thumbnailImage'] as String?;
    _firstName = snapshotData['firstName'] as String?;
    _lastName = snapshotData['lastName'] as String?;
    _youtubeLink = snapshotData['youtubeLink'] as String?;
    _postedBy = snapshotData['postedBy'] as String?;
    _twitterUserRef = snapshotData['twitterUserRef'] as DocumentReference?;
    _videoMedia = getStructList(
      snapshotData['video_media'],
      VideoMediaStruct.fromMap,
    );
    _playerSelectedSport = snapshotData['playerSelectedSport'] as String?;
    _videoDimensions =
        VideoDimensionsStruct.maybeFromMap(snapshotData['video_dimensions']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('threads');

  static Stream<ThreadsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ThreadsRecord.fromSnapshot(s));

  static Future<ThreadsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ThreadsRecord.fromSnapshot(s));

  static ThreadsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ThreadsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ThreadsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ThreadsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ThreadsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ThreadsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createThreadsRecordData({
  DateTime? timePosted,
  String? threadsContent,
  String? threadsPhoto,
  DocumentReference? user,
  int? numReply,
  int? numLike,
  String? threadsVideo,
  bool? adminPost,
  String? userImageUrl,
  String? userName,
  String? userRole,
  String? thumbnailImage,
  String? firstName,
  String? lastName,
  String? youtubeLink,
  String? postedBy,
  DocumentReference? twitterUserRef,
  String? playerSelectedSport,
  VideoDimensionsStruct? videoDimensions,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'time_posted': timePosted,
      'threads_content': threadsContent,
      'threads_photo': threadsPhoto,
      'user': user,
      'num_reply': numReply,
      'num_like': numLike,
      'threads_video': threadsVideo,
      'adminPost': adminPost,
      'userImageUrl': userImageUrl,
      'userName': userName,
      'userRole': userRole,
      'thumbnailImage': thumbnailImage,
      'firstName': firstName,
      'lastName': lastName,
      'youtubeLink': youtubeLink,
      'postedBy': postedBy,
      'twitterUserRef': twitterUserRef,
      'playerSelectedSport': playerSelectedSport,
      'video_dimensions': VideoDimensionsStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "video_dimensions" field.
  addVideoDimensionsStructData(
      firestoreData, videoDimensions, 'video_dimensions');

  return firestoreData;
}

class ThreadsRecordDocumentEquality implements Equality<ThreadsRecord> {
  const ThreadsRecordDocumentEquality();

  @override
  bool equals(ThreadsRecord? e1, ThreadsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.timePosted == e2?.timePosted &&
        e1?.threadsContent == e2?.threadsContent &&
        e1?.threadsPhoto == e2?.threadsPhoto &&
        e1?.user == e2?.user &&
        listEquality.equals(e1?.likedBy, e2?.likedBy) &&
        listEquality.equals(e1?.repliesBy, e2?.repliesBy) &&
        e1?.numReply == e2?.numReply &&
        e1?.numLike == e2?.numLike &&
        listEquality.equals(e1?.repliedAvator, e2?.repliedAvator) &&
        e1?.threadsVideo == e2?.threadsVideo &&
        listEquality.equals(e1?.threadReplies, e2?.threadReplies) &&
        e1?.adminPost == e2?.adminPost &&
        e1?.userImageUrl == e2?.userImageUrl &&
        e1?.userName == e2?.userName &&
        e1?.userRole == e2?.userRole &&
        e1?.thumbnailImage == e2?.thumbnailImage &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.youtubeLink == e2?.youtubeLink &&
        e1?.postedBy == e2?.postedBy &&
        e1?.twitterUserRef == e2?.twitterUserRef &&
        listEquality.equals(e1?.videoMedia, e2?.videoMedia) &&
        e1?.playerSelectedSport == e2?.playerSelectedSport &&
        e1?.videoDimensions == e2?.videoDimensions;
  }

  @override
  int hash(ThreadsRecord? e) => const ListEquality().hash([
        e?.timePosted,
        e?.threadsContent,
        e?.threadsPhoto,
        e?.user,
        e?.likedBy,
        e?.repliesBy,
        e?.numReply,
        e?.numLike,
        e?.repliedAvator,
        e?.threadsVideo,
        e?.threadReplies,
        e?.adminPost,
        e?.userImageUrl,
        e?.userName,
        e?.userRole,
        e?.thumbnailImage,
        e?.firstName,
        e?.lastName,
        e?.youtubeLink,
        e?.postedBy,
        e?.twitterUserRef,
        e?.videoMedia,
        e?.playerSelectedSport,
        e?.videoDimensions
      ]);

  @override
  bool isValidKey(Object? o) => o is ThreadsRecord;
}
