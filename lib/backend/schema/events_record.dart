import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsRecord extends FirestoreRecord {
  EventsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "coachRef" field.
  DocumentReference? _coachRef;
  DocumentReference? get coachRef => _coachRef;
  bool hasCoachRef() => _coachRef != null;

  // "isLimited" field.
  bool? _isLimited;
  bool get isLimited => _isLimited ?? false;
  bool hasIsLimited() => _isLimited != null;

  // "eventImage" field.
  String? _eventImage;
  String get eventImage => _eventImage ?? '';
  bool hasEventImage() => _eventImage != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "zipCode" field.
  String? _zipCode;
  String get zipCode => _zipCode ?? '';
  bool hasZipCode() => _zipCode != null;

  // "ageGroup" field.
  String? _ageGroup;
  String get ageGroup => _ageGroup ?? '';
  bool hasAgeGroup() => _ageGroup != null;

  // "endTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "startTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "cost" field.
  double? _cost;
  double get cost => _cost ?? 0.0;
  bool hasCost() => _cost != null;

  // "duration" field.
  double? _duration;
  double get duration => _duration ?? 0.0;
  bool hasDuration() => _duration != null;

  // "createdByRef" field.
  DocumentReference? _createdByRef;
  DocumentReference? get createdByRef => _createdByRef;
  bool hasCreatedByRef() => _createdByRef != null;

  // "teamMembers" field.
  List<DocumentReference>? _teamMembers;
  List<DocumentReference> get teamMembers => _teamMembers ?? const [];
  bool hasTeamMembers() => _teamMembers != null;

  // "dateTime" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  // "checkedInPlayers" field.
  List<DocumentReference>? _checkedInPlayers;
  List<DocumentReference> get checkedInPlayers => _checkedInPlayers ?? const [];
  bool hasCheckedInPlayers() => _checkedInPlayers != null;

  // "campType" field.
  String? _campType;
  String get campType => _campType ?? '';
  bool hasCampType() => _campType != null;

  // "hasProduct" field.
  bool? _hasProduct;
  bool get hasProduct => _hasProduct ?? false;
  bool hasHasProduct() => _hasProduct != null;

  // "productReference" field.
  DocumentReference? _productReference;
  DocumentReference? get productReference => _productReference;
  bool hasProductReference() => _productReference != null;

  // "showSpots" field.
  bool? _showSpots;
  bool get showSpots => _showSpots ?? false;
  bool hasShowSpots() => _showSpots != null;

  // "totalSpots" field.
  int? _totalSpots;
  int get totalSpots => _totalSpots ?? 0;
  bool hasTotalSpots() => _totalSpots != null;

  // "campFields" field.
  List<CampFieldsStruct>? _campFields;
  List<CampFieldsStruct> get campFields => _campFields ?? const [];
  bool hasCampFields() => _campFields != null;

  // "csv_required" field.
  bool? _csvRequired;
  bool get csvRequired => _csvRequired ?? false;
  bool hasCsvRequired() => _csvRequired != null;

  // "campOption" field.
  String? _campOption;
  String get campOption => _campOption ?? '';
  bool hasCampOption() => _campOption != null;

  // "has_csv_upload" field.
  bool? _hasCsvUpload;
  bool get hasCsvUpload => _hasCsvUpload ?? false;
  bool hasHasCsvUpload() => _hasCsvUpload != null;

  // "has_video_upload" field.
  bool? _hasVideoUpload;
  bool get hasVideoUpload => _hasVideoUpload ?? false;
  bool hasHasVideoUpload() => _hasVideoUpload != null;

  // "has_picture_upload" field.
  bool? _hasPictureUpload;
  bool get hasPictureUpload => _hasPictureUpload ?? false;
  bool hasHasPictureUpload() => _hasPictureUpload != null;

  // "video_required" field.
  bool? _videoRequired;
  bool get videoRequired => _videoRequired ?? false;
  bool hasVideoRequired() => _videoRequired != null;

  // "picture_required" field.
  bool? _pictureRequired;
  bool get pictureRequired => _pictureRequired ?? false;
  bool hasPictureRequired() => _pictureRequired != null;

  // "youtubeLink" field.
  String? _youtubeLink;
  String get youtubeLink => _youtubeLink ?? '';
  bool hasYoutubeLink() => _youtubeLink != null;

  // "fields" field.
  FieldsStruct? _fields;
  FieldsStruct get fields => _fields ?? FieldsStruct();
  bool hasFields() => _fields != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _coachRef = snapshotData['coachRef'] as DocumentReference?;
    _isLimited = snapshotData['isLimited'] as bool?;
    _eventImage = snapshotData['eventImage'] as String?;
    _description = snapshotData['description'] as String?;
    _state = snapshotData['state'] as String?;
    _city = snapshotData['city'] as String?;
    _zipCode = snapshotData['zipCode'] as String?;
    _ageGroup = snapshotData['ageGroup'] as String?;
    _endTime = snapshotData['endTime'] as DateTime?;
    _startTime = snapshotData['startTime'] as DateTime?;
    _address = snapshotData['address'] as String?;
    _cost = castToType<double>(snapshotData['cost']);
    _duration = castToType<double>(snapshotData['duration']);
    _createdByRef = snapshotData['createdByRef'] as DocumentReference?;
    _teamMembers = getDataList(snapshotData['teamMembers']);
    _dateTime = snapshotData['dateTime'] as DateTime?;
    _checkedInPlayers = getDataList(snapshotData['checkedInPlayers']);
    _campType = snapshotData['campType'] as String?;
    _hasProduct = snapshotData['hasProduct'] as bool?;
    _productReference = snapshotData['productReference'] as DocumentReference?;
    _showSpots = snapshotData['showSpots'] as bool?;
    _totalSpots = castToType<int>(snapshotData['totalSpots']);
    _campFields = getStructList(
      snapshotData['campFields'],
      CampFieldsStruct.fromMap,
    );
    _csvRequired = snapshotData['csv_required'] as bool?;
    _campOption = snapshotData['campOption'] as String?;
    _hasCsvUpload = snapshotData['has_csv_upload'] as bool?;
    _hasVideoUpload = snapshotData['has_video_upload'] as bool?;
    _hasPictureUpload = snapshotData['has_picture_upload'] as bool?;
    _videoRequired = snapshotData['video_required'] as bool?;
    _pictureRequired = snapshotData['picture_required'] as bool?;
    _youtubeLink = snapshotData['youtubeLink'] as String?;
    _fields = FieldsStruct.maybeFromMap(snapshotData['fields']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsRecord.fromSnapshot(s));

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsRecord.fromSnapshot(s));

  static EventsRecord fromSnapshot(DocumentSnapshot snapshot) => EventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsRecordData({
  String? name,
  DocumentReference? coachRef,
  bool? isLimited,
  String? eventImage,
  String? description,
  String? state,
  String? city,
  String? zipCode,
  String? ageGroup,
  DateTime? endTime,
  DateTime? startTime,
  String? address,
  double? cost,
  double? duration,
  DocumentReference? createdByRef,
  DateTime? dateTime,
  String? campType,
  bool? hasProduct,
  DocumentReference? productReference,
  bool? showSpots,
  int? totalSpots,
  bool? csvRequired,
  String? campOption,
  bool? hasCsvUpload,
  bool? hasVideoUpload,
  bool? hasPictureUpload,
  bool? videoRequired,
  bool? pictureRequired,
  String? youtubeLink,
  FieldsStruct? fields,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'coachRef': coachRef,
      'isLimited': isLimited,
      'eventImage': eventImage,
      'description': description,
      'state': state,
      'city': city,
      'zipCode': zipCode,
      'ageGroup': ageGroup,
      'endTime': endTime,
      'startTime': startTime,
      'address': address,
      'cost': cost,
      'duration': duration,
      'createdByRef': createdByRef,
      'dateTime': dateTime,
      'campType': campType,
      'hasProduct': hasProduct,
      'productReference': productReference,
      'showSpots': showSpots,
      'totalSpots': totalSpots,
      'csv_required': csvRequired,
      'campOption': campOption,
      'has_csv_upload': hasCsvUpload,
      'has_video_upload': hasVideoUpload,
      'has_picture_upload': hasPictureUpload,
      'video_required': videoRequired,
      'picture_required': pictureRequired,
      'youtubeLink': youtubeLink,
      'fields': FieldsStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "fields" field.
  addFieldsStructData(firestoreData, fields, 'fields');

  return firestoreData;
}

class EventsRecordDocumentEquality implements Equality<EventsRecord> {
  const EventsRecordDocumentEquality();

  @override
  bool equals(EventsRecord? e1, EventsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.coachRef == e2?.coachRef &&
        e1?.isLimited == e2?.isLimited &&
        e1?.eventImage == e2?.eventImage &&
        e1?.description == e2?.description &&
        e1?.state == e2?.state &&
        e1?.city == e2?.city &&
        e1?.zipCode == e2?.zipCode &&
        e1?.ageGroup == e2?.ageGroup &&
        e1?.endTime == e2?.endTime &&
        e1?.startTime == e2?.startTime &&
        e1?.address == e2?.address &&
        e1?.cost == e2?.cost &&
        e1?.duration == e2?.duration &&
        e1?.createdByRef == e2?.createdByRef &&
        listEquality.equals(e1?.teamMembers, e2?.teamMembers) &&
        e1?.dateTime == e2?.dateTime &&
        listEquality.equals(e1?.checkedInPlayers, e2?.checkedInPlayers) &&
        e1?.campType == e2?.campType &&
        e1?.hasProduct == e2?.hasProduct &&
        e1?.productReference == e2?.productReference &&
        e1?.showSpots == e2?.showSpots &&
        e1?.totalSpots == e2?.totalSpots &&
        listEquality.equals(e1?.campFields, e2?.campFields) &&
        e1?.csvRequired == e2?.csvRequired &&
        e1?.campOption == e2?.campOption &&
        e1?.hasCsvUpload == e2?.hasCsvUpload &&
        e1?.hasVideoUpload == e2?.hasVideoUpload &&
        e1?.hasPictureUpload == e2?.hasPictureUpload &&
        e1?.videoRequired == e2?.videoRequired &&
        e1?.pictureRequired == e2?.pictureRequired &&
        e1?.youtubeLink == e2?.youtubeLink &&
        e1?.fields == e2?.fields;
  }

  @override
  int hash(EventsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.coachRef,
        e?.isLimited,
        e?.eventImage,
        e?.description,
        e?.state,
        e?.city,
        e?.zipCode,
        e?.ageGroup,
        e?.endTime,
        e?.startTime,
        e?.address,
        e?.cost,
        e?.duration,
        e?.createdByRef,
        e?.teamMembers,
        e?.dateTime,
        e?.checkedInPlayers,
        e?.campType,
        e?.hasProduct,
        e?.productReference,
        e?.showSpots,
        e?.totalSpots,
        e?.campFields,
        e?.csvRequired,
        e?.campOption,
        e?.hasCsvUpload,
        e?.hasVideoUpload,
        e?.hasPictureUpload,
        e?.videoRequired,
        e?.pictureRequired,
        e?.youtubeLink,
        e?.fields
      ]);

  @override
  bool isValidKey(Object? o) => o is EventsRecord;
}
