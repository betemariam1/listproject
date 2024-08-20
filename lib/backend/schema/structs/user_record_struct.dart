// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecordStruct extends FFFirebaseStruct {
  UserRecordStruct({
    String? bat,
    String? throw1,
    String? selfReportedTime60,
    String? selfReportedSATTotal,
    String? selfReportedACTTotal,
    String? selfReportedBattingEV,
    String? weight,
    String? selfReportedGPA,
    String? selfReportedWeightedGPA,
    String? graduationYear,
    String? selfReportedFB4SVeloHigh,
    String? selfReportedFB4SVeloAverage,
    String? selfReportedCBVeloHigh,
    String? selfReportedCBVeloAverage,
    String? selfReportedCHVeloHigh,
    String? selfReportedCHVeloAverage,
    String? selfReportedSLVeloHigh,
    String? selfReportedSLVeloAverage,
    String? playerSelectedSport,
    String? heightFeet,
    String? heightInches,
    String? selfReportedFB2SVeloHigh,
    String? selfReportedFB2SVeloAverage,
    String? selfReportedProShuttleTime,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _bat = bat,
        _throw1 = throw1,
        _selfReportedTime60 = selfReportedTime60,
        _selfReportedSATTotal = selfReportedSATTotal,
        _selfReportedACTTotal = selfReportedACTTotal,
        _selfReportedBattingEV = selfReportedBattingEV,
        _weight = weight,
        _selfReportedGPA = selfReportedGPA,
        _selfReportedWeightedGPA = selfReportedWeightedGPA,
        _graduationYear = graduationYear,
        _selfReportedFB4SVeloHigh = selfReportedFB4SVeloHigh,
        _selfReportedFB4SVeloAverage = selfReportedFB4SVeloAverage,
        _selfReportedCBVeloHigh = selfReportedCBVeloHigh,
        _selfReportedCBVeloAverage = selfReportedCBVeloAverage,
        _selfReportedCHVeloHigh = selfReportedCHVeloHigh,
        _selfReportedCHVeloAverage = selfReportedCHVeloAverage,
        _selfReportedSLVeloHigh = selfReportedSLVeloHigh,
        _selfReportedSLVeloAverage = selfReportedSLVeloAverage,
        _playerSelectedSport = playerSelectedSport,
        _heightFeet = heightFeet,
        _heightInches = heightInches,
        _selfReportedFB2SVeloHigh = selfReportedFB2SVeloHigh,
        _selfReportedFB2SVeloAverage = selfReportedFB2SVeloAverage,
        _selfReportedProShuttleTime = selfReportedProShuttleTime,
        super(firestoreUtilData);

  // "bat" field.
  String? _bat;
  String get bat => _bat ?? '';
  set bat(String? val) => _bat = val;

  bool hasBat() => _bat != null;

  // "throw1" field.
  String? _throw1;
  String get throw1 => _throw1 ?? '';
  set throw1(String? val) => _throw1 = val;

  bool hasThrow1() => _throw1 != null;

  // "selfReportedTime60" field.
  String? _selfReportedTime60;
  String get selfReportedTime60 => _selfReportedTime60 ?? '';
  set selfReportedTime60(String? val) => _selfReportedTime60 = val;

  bool hasSelfReportedTime60() => _selfReportedTime60 != null;

  // "selfReportedSATTotal" field.
  String? _selfReportedSATTotal;
  String get selfReportedSATTotal => _selfReportedSATTotal ?? '';
  set selfReportedSATTotal(String? val) => _selfReportedSATTotal = val;

  bool hasSelfReportedSATTotal() => _selfReportedSATTotal != null;

  // "selfReportedACTTotal" field.
  String? _selfReportedACTTotal;
  String get selfReportedACTTotal => _selfReportedACTTotal ?? '';
  set selfReportedACTTotal(String? val) => _selfReportedACTTotal = val;

  bool hasSelfReportedACTTotal() => _selfReportedACTTotal != null;

  // "selfReportedBattingEV" field.
  String? _selfReportedBattingEV;
  String get selfReportedBattingEV => _selfReportedBattingEV ?? '';
  set selfReportedBattingEV(String? val) => _selfReportedBattingEV = val;

  bool hasSelfReportedBattingEV() => _selfReportedBattingEV != null;

  // "weight" field.
  String? _weight;
  String get weight => _weight ?? '';
  set weight(String? val) => _weight = val;

  bool hasWeight() => _weight != null;

  // "selfReportedGPA" field.
  String? _selfReportedGPA;
  String get selfReportedGPA => _selfReportedGPA ?? '';
  set selfReportedGPA(String? val) => _selfReportedGPA = val;

  bool hasSelfReportedGPA() => _selfReportedGPA != null;

  // "selfReportedWeightedGPA" field.
  String? _selfReportedWeightedGPA;
  String get selfReportedWeightedGPA => _selfReportedWeightedGPA ?? '';
  set selfReportedWeightedGPA(String? val) => _selfReportedWeightedGPA = val;

  bool hasSelfReportedWeightedGPA() => _selfReportedWeightedGPA != null;

  // "graduationYear" field.
  String? _graduationYear;
  String get graduationYear => _graduationYear ?? '';
  set graduationYear(String? val) => _graduationYear = val;

  bool hasGraduationYear() => _graduationYear != null;

  // "selfReportedFB4SVeloHigh" field.
  String? _selfReportedFB4SVeloHigh;
  String get selfReportedFB4SVeloHigh => _selfReportedFB4SVeloHigh ?? '';
  set selfReportedFB4SVeloHigh(String? val) => _selfReportedFB4SVeloHigh = val;

  bool hasSelfReportedFB4SVeloHigh() => _selfReportedFB4SVeloHigh != null;

  // "selfReportedFB4SVeloAverage" field.
  String? _selfReportedFB4SVeloAverage;
  String get selfReportedFB4SVeloAverage => _selfReportedFB4SVeloAverage ?? '';
  set selfReportedFB4SVeloAverage(String? val) =>
      _selfReportedFB4SVeloAverage = val;

  bool hasSelfReportedFB4SVeloAverage() => _selfReportedFB4SVeloAverage != null;

  // "selfReportedCBVeloHigh" field.
  String? _selfReportedCBVeloHigh;
  String get selfReportedCBVeloHigh => _selfReportedCBVeloHigh ?? '';
  set selfReportedCBVeloHigh(String? val) => _selfReportedCBVeloHigh = val;

  bool hasSelfReportedCBVeloHigh() => _selfReportedCBVeloHigh != null;

  // "selfReportedCBVeloAverage" field.
  String? _selfReportedCBVeloAverage;
  String get selfReportedCBVeloAverage => _selfReportedCBVeloAverage ?? '';
  set selfReportedCBVeloAverage(String? val) =>
      _selfReportedCBVeloAverage = val;

  bool hasSelfReportedCBVeloAverage() => _selfReportedCBVeloAverage != null;

  // "selfReportedCHVeloHigh" field.
  String? _selfReportedCHVeloHigh;
  String get selfReportedCHVeloHigh => _selfReportedCHVeloHigh ?? '';
  set selfReportedCHVeloHigh(String? val) => _selfReportedCHVeloHigh = val;

  bool hasSelfReportedCHVeloHigh() => _selfReportedCHVeloHigh != null;

  // "selfReportedCHVeloAverage" field.
  String? _selfReportedCHVeloAverage;
  String get selfReportedCHVeloAverage => _selfReportedCHVeloAverage ?? '';
  set selfReportedCHVeloAverage(String? val) =>
      _selfReportedCHVeloAverage = val;

  bool hasSelfReportedCHVeloAverage() => _selfReportedCHVeloAverage != null;

  // "selfReportedSLVeloHigh" field.
  String? _selfReportedSLVeloHigh;
  String get selfReportedSLVeloHigh => _selfReportedSLVeloHigh ?? '';
  set selfReportedSLVeloHigh(String? val) => _selfReportedSLVeloHigh = val;

  bool hasSelfReportedSLVeloHigh() => _selfReportedSLVeloHigh != null;

  // "selfReportedSLVeloAverage" field.
  String? _selfReportedSLVeloAverage;
  String get selfReportedSLVeloAverage => _selfReportedSLVeloAverage ?? '';
  set selfReportedSLVeloAverage(String? val) =>
      _selfReportedSLVeloAverage = val;

  bool hasSelfReportedSLVeloAverage() => _selfReportedSLVeloAverage != null;

  // "playerSelectedSport" field.
  String? _playerSelectedSport;
  String get playerSelectedSport => _playerSelectedSport ?? '';
  set playerSelectedSport(String? val) => _playerSelectedSport = val;

  bool hasPlayerSelectedSport() => _playerSelectedSport != null;

  // "heightFeet" field.
  String? _heightFeet;
  String get heightFeet => _heightFeet ?? '';
  set heightFeet(String? val) => _heightFeet = val;

  bool hasHeightFeet() => _heightFeet != null;

  // "heightInches" field.
  String? _heightInches;
  String get heightInches => _heightInches ?? '';
  set heightInches(String? val) => _heightInches = val;

  bool hasHeightInches() => _heightInches != null;

  // "selfReportedFB2SVeloHigh" field.
  String? _selfReportedFB2SVeloHigh;
  String get selfReportedFB2SVeloHigh => _selfReportedFB2SVeloHigh ?? '';
  set selfReportedFB2SVeloHigh(String? val) => _selfReportedFB2SVeloHigh = val;

  bool hasSelfReportedFB2SVeloHigh() => _selfReportedFB2SVeloHigh != null;

  // "selfReportedFB2SVeloAverage" field.
  String? _selfReportedFB2SVeloAverage;
  String get selfReportedFB2SVeloAverage => _selfReportedFB2SVeloAverage ?? '';
  set selfReportedFB2SVeloAverage(String? val) =>
      _selfReportedFB2SVeloAverage = val;

  bool hasSelfReportedFB2SVeloAverage() => _selfReportedFB2SVeloAverage != null;

  // "selfReportedProShuttleTime" field.
  String? _selfReportedProShuttleTime;
  String get selfReportedProShuttleTime => _selfReportedProShuttleTime ?? '';
  set selfReportedProShuttleTime(String? val) =>
      _selfReportedProShuttleTime = val;

  bool hasSelfReportedProShuttleTime() => _selfReportedProShuttleTime != null;

  static UserRecordStruct fromMap(Map<String, dynamic> data) =>
      UserRecordStruct(
        bat: data['bat'] as String?,
        throw1: data['throw1'] as String?,
        selfReportedTime60: data['selfReportedTime60'] as String?,
        selfReportedSATTotal: data['selfReportedSATTotal'] as String?,
        selfReportedACTTotal: data['selfReportedACTTotal'] as String?,
        selfReportedBattingEV: data['selfReportedBattingEV'] as String?,
        weight: data['weight'] as String?,
        selfReportedGPA: data['selfReportedGPA'] as String?,
        selfReportedWeightedGPA: data['selfReportedWeightedGPA'] as String?,
        graduationYear: data['graduationYear'] as String?,
        selfReportedFB4SVeloHigh: data['selfReportedFB4SVeloHigh'] as String?,
        selfReportedFB4SVeloAverage:
            data['selfReportedFB4SVeloAverage'] as String?,
        selfReportedCBVeloHigh: data['selfReportedCBVeloHigh'] as String?,
        selfReportedCBVeloAverage: data['selfReportedCBVeloAverage'] as String?,
        selfReportedCHVeloHigh: data['selfReportedCHVeloHigh'] as String?,
        selfReportedCHVeloAverage: data['selfReportedCHVeloAverage'] as String?,
        selfReportedSLVeloHigh: data['selfReportedSLVeloHigh'] as String?,
        selfReportedSLVeloAverage: data['selfReportedSLVeloAverage'] as String?,
        playerSelectedSport: data['playerSelectedSport'] as String?,
        heightFeet: data['heightFeet'] as String?,
        heightInches: data['heightInches'] as String?,
        selfReportedFB2SVeloHigh: data['selfReportedFB2SVeloHigh'] as String?,
        selfReportedFB2SVeloAverage:
            data['selfReportedFB2SVeloAverage'] as String?,
        selfReportedProShuttleTime:
            data['selfReportedProShuttleTime'] as String?,
      );

  static UserRecordStruct? maybeFromMap(dynamic data) => data is Map
      ? UserRecordStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'bat': _bat,
        'throw1': _throw1,
        'selfReportedTime60': _selfReportedTime60,
        'selfReportedSATTotal': _selfReportedSATTotal,
        'selfReportedACTTotal': _selfReportedACTTotal,
        'selfReportedBattingEV': _selfReportedBattingEV,
        'weight': _weight,
        'selfReportedGPA': _selfReportedGPA,
        'selfReportedWeightedGPA': _selfReportedWeightedGPA,
        'graduationYear': _graduationYear,
        'selfReportedFB4SVeloHigh': _selfReportedFB4SVeloHigh,
        'selfReportedFB4SVeloAverage': _selfReportedFB4SVeloAverage,
        'selfReportedCBVeloHigh': _selfReportedCBVeloHigh,
        'selfReportedCBVeloAverage': _selfReportedCBVeloAverage,
        'selfReportedCHVeloHigh': _selfReportedCHVeloHigh,
        'selfReportedCHVeloAverage': _selfReportedCHVeloAverage,
        'selfReportedSLVeloHigh': _selfReportedSLVeloHigh,
        'selfReportedSLVeloAverage': _selfReportedSLVeloAverage,
        'playerSelectedSport': _playerSelectedSport,
        'heightFeet': _heightFeet,
        'heightInches': _heightInches,
        'selfReportedFB2SVeloHigh': _selfReportedFB2SVeloHigh,
        'selfReportedFB2SVeloAverage': _selfReportedFB2SVeloAverage,
        'selfReportedProShuttleTime': _selfReportedProShuttleTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'bat': serializeParam(
          _bat,
          ParamType.String,
        ),
        'throw1': serializeParam(
          _throw1,
          ParamType.String,
        ),
        'selfReportedTime60': serializeParam(
          _selfReportedTime60,
          ParamType.String,
        ),
        'selfReportedSATTotal': serializeParam(
          _selfReportedSATTotal,
          ParamType.String,
        ),
        'selfReportedACTTotal': serializeParam(
          _selfReportedACTTotal,
          ParamType.String,
        ),
        'selfReportedBattingEV': serializeParam(
          _selfReportedBattingEV,
          ParamType.String,
        ),
        'weight': serializeParam(
          _weight,
          ParamType.String,
        ),
        'selfReportedGPA': serializeParam(
          _selfReportedGPA,
          ParamType.String,
        ),
        'selfReportedWeightedGPA': serializeParam(
          _selfReportedWeightedGPA,
          ParamType.String,
        ),
        'graduationYear': serializeParam(
          _graduationYear,
          ParamType.String,
        ),
        'selfReportedFB4SVeloHigh': serializeParam(
          _selfReportedFB4SVeloHigh,
          ParamType.String,
        ),
        'selfReportedFB4SVeloAverage': serializeParam(
          _selfReportedFB4SVeloAverage,
          ParamType.String,
        ),
        'selfReportedCBVeloHigh': serializeParam(
          _selfReportedCBVeloHigh,
          ParamType.String,
        ),
        'selfReportedCBVeloAverage': serializeParam(
          _selfReportedCBVeloAverage,
          ParamType.String,
        ),
        'selfReportedCHVeloHigh': serializeParam(
          _selfReportedCHVeloHigh,
          ParamType.String,
        ),
        'selfReportedCHVeloAverage': serializeParam(
          _selfReportedCHVeloAverage,
          ParamType.String,
        ),
        'selfReportedSLVeloHigh': serializeParam(
          _selfReportedSLVeloHigh,
          ParamType.String,
        ),
        'selfReportedSLVeloAverage': serializeParam(
          _selfReportedSLVeloAverage,
          ParamType.String,
        ),
        'playerSelectedSport': serializeParam(
          _playerSelectedSport,
          ParamType.String,
        ),
        'heightFeet': serializeParam(
          _heightFeet,
          ParamType.String,
        ),
        'heightInches': serializeParam(
          _heightInches,
          ParamType.String,
        ),
        'selfReportedFB2SVeloHigh': serializeParam(
          _selfReportedFB2SVeloHigh,
          ParamType.String,
        ),
        'selfReportedFB2SVeloAverage': serializeParam(
          _selfReportedFB2SVeloAverage,
          ParamType.String,
        ),
        'selfReportedProShuttleTime': serializeParam(
          _selfReportedProShuttleTime,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserRecordStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserRecordStruct(
        bat: deserializeParam(
          data['bat'],
          ParamType.String,
          false,
        ),
        throw1: deserializeParam(
          data['throw1'],
          ParamType.String,
          false,
        ),
        selfReportedTime60: deserializeParam(
          data['selfReportedTime60'],
          ParamType.String,
          false,
        ),
        selfReportedSATTotal: deserializeParam(
          data['selfReportedSATTotal'],
          ParamType.String,
          false,
        ),
        selfReportedACTTotal: deserializeParam(
          data['selfReportedACTTotal'],
          ParamType.String,
          false,
        ),
        selfReportedBattingEV: deserializeParam(
          data['selfReportedBattingEV'],
          ParamType.String,
          false,
        ),
        weight: deserializeParam(
          data['weight'],
          ParamType.String,
          false,
        ),
        selfReportedGPA: deserializeParam(
          data['selfReportedGPA'],
          ParamType.String,
          false,
        ),
        selfReportedWeightedGPA: deserializeParam(
          data['selfReportedWeightedGPA'],
          ParamType.String,
          false,
        ),
        graduationYear: deserializeParam(
          data['graduationYear'],
          ParamType.String,
          false,
        ),
        selfReportedFB4SVeloHigh: deserializeParam(
          data['selfReportedFB4SVeloHigh'],
          ParamType.String,
          false,
        ),
        selfReportedFB4SVeloAverage: deserializeParam(
          data['selfReportedFB4SVeloAverage'],
          ParamType.String,
          false,
        ),
        selfReportedCBVeloHigh: deserializeParam(
          data['selfReportedCBVeloHigh'],
          ParamType.String,
          false,
        ),
        selfReportedCBVeloAverage: deserializeParam(
          data['selfReportedCBVeloAverage'],
          ParamType.String,
          false,
        ),
        selfReportedCHVeloHigh: deserializeParam(
          data['selfReportedCHVeloHigh'],
          ParamType.String,
          false,
        ),
        selfReportedCHVeloAverage: deserializeParam(
          data['selfReportedCHVeloAverage'],
          ParamType.String,
          false,
        ),
        selfReportedSLVeloHigh: deserializeParam(
          data['selfReportedSLVeloHigh'],
          ParamType.String,
          false,
        ),
        selfReportedSLVeloAverage: deserializeParam(
          data['selfReportedSLVeloAverage'],
          ParamType.String,
          false,
        ),
        playerSelectedSport: deserializeParam(
          data['playerSelectedSport'],
          ParamType.String,
          false,
        ),
        heightFeet: deserializeParam(
          data['heightFeet'],
          ParamType.String,
          false,
        ),
        heightInches: deserializeParam(
          data['heightInches'],
          ParamType.String,
          false,
        ),
        selfReportedFB2SVeloHigh: deserializeParam(
          data['selfReportedFB2SVeloHigh'],
          ParamType.String,
          false,
        ),
        selfReportedFB2SVeloAverage: deserializeParam(
          data['selfReportedFB2SVeloAverage'],
          ParamType.String,
          false,
        ),
        selfReportedProShuttleTime: deserializeParam(
          data['selfReportedProShuttleTime'],
          ParamType.String,
          false,
        ),
      );

  static UserRecordStruct fromAlgoliaData(Map<String, dynamic> data) =>
      UserRecordStruct(
        bat: convertAlgoliaParam(
          data['bat'],
          ParamType.String,
          false,
        ),
        throw1: convertAlgoliaParam(
          data['throw1'],
          ParamType.String,
          false,
        ),
        selfReportedTime60: convertAlgoliaParam(
          data['selfReportedTime60'],
          ParamType.String,
          false,
        ),
        selfReportedSATTotal: convertAlgoliaParam(
          data['selfReportedSATTotal'],
          ParamType.String,
          false,
        ),
        selfReportedACTTotal: convertAlgoliaParam(
          data['selfReportedACTTotal'],
          ParamType.String,
          false,
        ),
        selfReportedBattingEV: convertAlgoliaParam(
          data['selfReportedBattingEV'],
          ParamType.String,
          false,
        ),
        weight: convertAlgoliaParam(
          data['weight'],
          ParamType.String,
          false,
        ),
        selfReportedGPA: convertAlgoliaParam(
          data['selfReportedGPA'],
          ParamType.String,
          false,
        ),
        selfReportedWeightedGPA: convertAlgoliaParam(
          data['selfReportedWeightedGPA'],
          ParamType.String,
          false,
        ),
        graduationYear: convertAlgoliaParam(
          data['graduationYear'],
          ParamType.String,
          false,
        ),
        selfReportedFB4SVeloHigh: convertAlgoliaParam(
          data['selfReportedFB4SVeloHigh'],
          ParamType.String,
          false,
        ),
        selfReportedFB4SVeloAverage: convertAlgoliaParam(
          data['selfReportedFB4SVeloAverage'],
          ParamType.String,
          false,
        ),
        selfReportedCBVeloHigh: convertAlgoliaParam(
          data['selfReportedCBVeloHigh'],
          ParamType.String,
          false,
        ),
        selfReportedCBVeloAverage: convertAlgoliaParam(
          data['selfReportedCBVeloAverage'],
          ParamType.String,
          false,
        ),
        selfReportedCHVeloHigh: convertAlgoliaParam(
          data['selfReportedCHVeloHigh'],
          ParamType.String,
          false,
        ),
        selfReportedCHVeloAverage: convertAlgoliaParam(
          data['selfReportedCHVeloAverage'],
          ParamType.String,
          false,
        ),
        selfReportedSLVeloHigh: convertAlgoliaParam(
          data['selfReportedSLVeloHigh'],
          ParamType.String,
          false,
        ),
        selfReportedSLVeloAverage: convertAlgoliaParam(
          data['selfReportedSLVeloAverage'],
          ParamType.String,
          false,
        ),
        playerSelectedSport: convertAlgoliaParam(
          data['playerSelectedSport'],
          ParamType.String,
          false,
        ),
        heightFeet: convertAlgoliaParam(
          data['heightFeet'],
          ParamType.String,
          false,
        ),
        heightInches: convertAlgoliaParam(
          data['heightInches'],
          ParamType.String,
          false,
        ),
        selfReportedFB2SVeloHigh: convertAlgoliaParam(
          data['selfReportedFB2SVeloHigh'],
          ParamType.String,
          false,
        ),
        selfReportedFB2SVeloAverage: convertAlgoliaParam(
          data['selfReportedFB2SVeloAverage'],
          ParamType.String,
          false,
        ),
        selfReportedProShuttleTime: convertAlgoliaParam(
          data['selfReportedProShuttleTime'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'UserRecordStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserRecordStruct &&
        bat == other.bat &&
        throw1 == other.throw1 &&
        selfReportedTime60 == other.selfReportedTime60 &&
        selfReportedSATTotal == other.selfReportedSATTotal &&
        selfReportedACTTotal == other.selfReportedACTTotal &&
        selfReportedBattingEV == other.selfReportedBattingEV &&
        weight == other.weight &&
        selfReportedGPA == other.selfReportedGPA &&
        selfReportedWeightedGPA == other.selfReportedWeightedGPA &&
        graduationYear == other.graduationYear &&
        selfReportedFB4SVeloHigh == other.selfReportedFB4SVeloHigh &&
        selfReportedFB4SVeloAverage == other.selfReportedFB4SVeloAverage &&
        selfReportedCBVeloHigh == other.selfReportedCBVeloHigh &&
        selfReportedCBVeloAverage == other.selfReportedCBVeloAverage &&
        selfReportedCHVeloHigh == other.selfReportedCHVeloHigh &&
        selfReportedCHVeloAverage == other.selfReportedCHVeloAverage &&
        selfReportedSLVeloHigh == other.selfReportedSLVeloHigh &&
        selfReportedSLVeloAverage == other.selfReportedSLVeloAverage &&
        playerSelectedSport == other.playerSelectedSport &&
        heightFeet == other.heightFeet &&
        heightInches == other.heightInches &&
        selfReportedFB2SVeloHigh == other.selfReportedFB2SVeloHigh &&
        selfReportedFB2SVeloAverage == other.selfReportedFB2SVeloAverage &&
        selfReportedProShuttleTime == other.selfReportedProShuttleTime;
  }

  @override
  int get hashCode => const ListEquality().hash([
        bat,
        throw1,
        selfReportedTime60,
        selfReportedSATTotal,
        selfReportedACTTotal,
        selfReportedBattingEV,
        weight,
        selfReportedGPA,
        selfReportedWeightedGPA,
        graduationYear,
        selfReportedFB4SVeloHigh,
        selfReportedFB4SVeloAverage,
        selfReportedCBVeloHigh,
        selfReportedCBVeloAverage,
        selfReportedCHVeloHigh,
        selfReportedCHVeloAverage,
        selfReportedSLVeloHigh,
        selfReportedSLVeloAverage,
        playerSelectedSport,
        heightFeet,
        heightInches,
        selfReportedFB2SVeloHigh,
        selfReportedFB2SVeloAverage,
        selfReportedProShuttleTime
      ]);
}

UserRecordStruct createUserRecordStruct({
  String? bat,
  String? throw1,
  String? selfReportedTime60,
  String? selfReportedSATTotal,
  String? selfReportedACTTotal,
  String? selfReportedBattingEV,
  String? weight,
  String? selfReportedGPA,
  String? selfReportedWeightedGPA,
  String? graduationYear,
  String? selfReportedFB4SVeloHigh,
  String? selfReportedFB4SVeloAverage,
  String? selfReportedCBVeloHigh,
  String? selfReportedCBVeloAverage,
  String? selfReportedCHVeloHigh,
  String? selfReportedCHVeloAverage,
  String? selfReportedSLVeloHigh,
  String? selfReportedSLVeloAverage,
  String? playerSelectedSport,
  String? heightFeet,
  String? heightInches,
  String? selfReportedFB2SVeloHigh,
  String? selfReportedFB2SVeloAverage,
  String? selfReportedProShuttleTime,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserRecordStruct(
      bat: bat,
      throw1: throw1,
      selfReportedTime60: selfReportedTime60,
      selfReportedSATTotal: selfReportedSATTotal,
      selfReportedACTTotal: selfReportedACTTotal,
      selfReportedBattingEV: selfReportedBattingEV,
      weight: weight,
      selfReportedGPA: selfReportedGPA,
      selfReportedWeightedGPA: selfReportedWeightedGPA,
      graduationYear: graduationYear,
      selfReportedFB4SVeloHigh: selfReportedFB4SVeloHigh,
      selfReportedFB4SVeloAverage: selfReportedFB4SVeloAverage,
      selfReportedCBVeloHigh: selfReportedCBVeloHigh,
      selfReportedCBVeloAverage: selfReportedCBVeloAverage,
      selfReportedCHVeloHigh: selfReportedCHVeloHigh,
      selfReportedCHVeloAverage: selfReportedCHVeloAverage,
      selfReportedSLVeloHigh: selfReportedSLVeloHigh,
      selfReportedSLVeloAverage: selfReportedSLVeloAverage,
      playerSelectedSport: playerSelectedSport,
      heightFeet: heightFeet,
      heightInches: heightInches,
      selfReportedFB2SVeloHigh: selfReportedFB2SVeloHigh,
      selfReportedFB2SVeloAverage: selfReportedFB2SVeloAverage,
      selfReportedProShuttleTime: selfReportedProShuttleTime,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserRecordStruct? updateUserRecordStruct(
  UserRecordStruct? userRecord, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userRecord
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserRecordStructData(
  Map<String, dynamic> firestoreData,
  UserRecordStruct? userRecord,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userRecord == null) {
    return;
  }
  if (userRecord.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userRecord.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userRecordData = getUserRecordFirestoreData(userRecord, forFieldValue);
  final nestedData = userRecordData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userRecord.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserRecordFirestoreData(
  UserRecordStruct? userRecord, [
  bool forFieldValue = false,
]) {
  if (userRecord == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userRecord.toMap());

  // Add any Firestore field values
  userRecord.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserRecordListFirestoreData(
  List<UserRecordStruct>? userRecords,
) =>
    userRecords?.map((e) => getUserRecordFirestoreData(e, true)).toList() ?? [];
