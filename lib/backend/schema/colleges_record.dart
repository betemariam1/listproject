import 'dart:async';

import 'package:from_css_color/from_css_color.dart';
import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CollegesRecord extends FirestoreRecord {
  CollegesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "division" field.
  String? _division;
  String get division => _division ?? '';
  bool hasDivision() => _division != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "mascot" field.
  String? _mascot;
  String get mascot => _mascot ?? '';
  bool hasMascot() => _mascot != null;

  // "ncaa_logo_path" field.
  String? _ncaaLogoPath;
  String get ncaaLogoPath => _ncaaLogoPath ?? '';
  bool hasNcaaLogoPath() => _ncaaLogoPath != null;

  // "selfRef" field.
  String? _selfRef;
  String get selfRef => _selfRef ?? '';
  bool hasSelfRef() => _selfRef != null;

  // "zip" field.
  String? _zip;
  String get zip => _zip ?? '';
  bool hasZip() => _zip != null;

  // "logo_path" field.
  String? _logoPath;
  String get logoPath => _logoPath ?? '';
  bool hasLogoPath() => _logoPath != null;

  // "has_softball" field.
  bool? _hasSoftball;
  bool get hasSoftball => _hasSoftball ?? false;
  bool hasHasSoftball() => _hasSoftball != null;

  // "has_baseball" field.
  bool? _hasBaseball;
  bool get hasBaseball => _hasBaseball ?? false;
  bool hasHasBaseball() => _hasBaseball != null;

  // "has_twitter" field.
  bool? _hasTwitter;
  bool get hasTwitter => _hasTwitter ?? false;
  bool hasHasTwitter() => _hasTwitter != null;

  // "about" field.
  String? _about;
  String get about => _about ?? '';
  bool hasAbout() => _about != null;

  // "collegeTwitterUrl" field.
  String? _collegeTwitterUrl;
  String get collegeTwitterUrl => _collegeTwitterUrl ?? '';
  bool hasCollegeTwitterUrl() => _collegeTwitterUrl != null;

  // "bannerURL" field.
  String? _bannerURL;
  String get bannerURL => _bannerURL ?? '';
  bool hasBannerURL() => _bannerURL != null;

  void _initializeFields() {
    _city = snapshotData['city'] as String?;
    _division = snapshotData['division'] as String?;
    _state = snapshotData['state'] as String?;
    _address = snapshotData['address'] as String?;
    _name = snapshotData['name'] as String?;
    _mascot = snapshotData['mascot'] as String?;
    _ncaaLogoPath = snapshotData['ncaa_logo_path'] as String?;
    _selfRef = snapshotData['selfRef'] as String?;
    _zip = snapshotData['zip'] as String?;
    _logoPath = snapshotData['logo_path'] as String?;
    _hasSoftball = snapshotData['has_softball'] as bool?;
    _hasBaseball = snapshotData['has_baseball'] as bool?;
    _hasTwitter = snapshotData['has_twitter'] as bool?;
    _about = snapshotData['about'] as String?;
    _collegeTwitterUrl = snapshotData['collegeTwitterUrl'] as String?;
    _bannerURL = snapshotData['bannerURL'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('colleges');

  static Stream<CollegesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CollegesRecord.fromSnapshot(s));

  static Future<CollegesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CollegesRecord.fromSnapshot(s));

  static CollegesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CollegesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CollegesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CollegesRecord._(reference, mapFromFirestore(data));

  static CollegesRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      CollegesRecord.getDocumentFromData(
        {
          'city': snapshot.data['city'],
          'division': snapshot.data['division'],
          'state': snapshot.data['state'],
          'address': snapshot.data['address'],
          'name': snapshot.data['name'],
          'mascot': snapshot.data['mascot'],
          'ncaa_logo_path': snapshot.data['ncaa_logo_path'],
          'selfRef': snapshot.data['selfRef'],
          'zip': snapshot.data['zip'],
          'logo_path': snapshot.data['logo_path'],
          'has_softball': snapshot.data['has_softball'],
          'has_baseball': snapshot.data['has_baseball'],
          'has_twitter': snapshot.data['has_twitter'],
          'about': snapshot.data['about'],
          'collegeTwitterUrl': snapshot.data['collegeTwitterUrl'],
          'bannerURL': snapshot.data['bannerURL'],
        },
        CollegesRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<CollegesRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'colleges',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'CollegesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CollegesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCollegesRecordData({
  String? city,
  String? division,
  String? state,
  String? address,
  String? name,
  String? mascot,
  String? ncaaLogoPath,
  String? selfRef,
  String? zip,
  String? logoPath,
  bool? hasSoftball,
  bool? hasBaseball,
  bool? hasTwitter,
  String? about,
  String? collegeTwitterUrl,
  String? bannerURL,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'city': city,
      'division': division,
      'state': state,
      'address': address,
      'name': name,
      'mascot': mascot,
      'ncaa_logo_path': ncaaLogoPath,
      'selfRef': selfRef,
      'zip': zip,
      'logo_path': logoPath,
      'has_softball': hasSoftball,
      'has_baseball': hasBaseball,
      'has_twitter': hasTwitter,
      'about': about,
      'collegeTwitterUrl': collegeTwitterUrl,
      'bannerURL': bannerURL,
    }.withoutNulls,
  );

  return firestoreData;
}

class CollegesRecordDocumentEquality implements Equality<CollegesRecord> {
  const CollegesRecordDocumentEquality();

  @override
  bool equals(CollegesRecord? e1, CollegesRecord? e2) {
    return e1?.city == e2?.city &&
        e1?.division == e2?.division &&
        e1?.state == e2?.state &&
        e1?.address == e2?.address &&
        e1?.name == e2?.name &&
        e1?.mascot == e2?.mascot &&
        e1?.ncaaLogoPath == e2?.ncaaLogoPath &&
        e1?.selfRef == e2?.selfRef &&
        e1?.zip == e2?.zip &&
        e1?.logoPath == e2?.logoPath &&
        e1?.hasSoftball == e2?.hasSoftball &&
        e1?.hasBaseball == e2?.hasBaseball &&
        e1?.hasTwitter == e2?.hasTwitter &&
        e1?.about == e2?.about &&
        e1?.collegeTwitterUrl == e2?.collegeTwitterUrl &&
        e1?.bannerURL == e2?.bannerURL;
  }

  @override
  int hash(CollegesRecord? e) => const ListEquality().hash([
        e?.city,
        e?.division,
        e?.state,
        e?.address,
        e?.name,
        e?.mascot,
        e?.ncaaLogoPath,
        e?.selfRef,
        e?.zip,
        e?.logoPath,
        e?.hasSoftball,
        e?.hasBaseball,
        e?.hasTwitter,
        e?.about,
        e?.collegeTwitterUrl,
        e?.bannerURL
      ]);

  @override
  bool isValidKey(Object? o) => o is CollegesRecord;
}
