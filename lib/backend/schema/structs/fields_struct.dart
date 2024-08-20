// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FieldsStruct extends FFFirebaseStruct {
  FieldsStruct({
    String? bat,
    String? cBVeloAverage,
    String? cBVeloHigh,
    String? cHVeloAverage,
    String? cHVeloHigh,
    String? fB2SVeloAverage,
    String? fB2SVeloHigh,
    String? fB4SVeloAverage,
    String? fB4SVeloHigh,
    String? graduationYear,
    String? name,
    String? position,
    String? profileImage,
    String? sLVeloAverage,
    String? sLVeloHigh,
    String? throw1,
    String? bbrpmmax,
    String? bBVeloMAX,
    String? chrpmavg,
    String? cHVeloMAX,
    String? cPop,
    String? cVelo,
    String? ev,
    String? email,
    String? fbrpmmax,
    String? fBVeloMAX,
    String? first,
    String? iNFVelo,
    String? last,
    String? oFVelo,
    String? uniform,
    String? year,
    String? yd60,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _bat = bat,
        _cBVeloAverage = cBVeloAverage,
        _cBVeloHigh = cBVeloHigh,
        _cHVeloAverage = cHVeloAverage,
        _cHVeloHigh = cHVeloHigh,
        _fB2SVeloAverage = fB2SVeloAverage,
        _fB2SVeloHigh = fB2SVeloHigh,
        _fB4SVeloAverage = fB4SVeloAverage,
        _fB4SVeloHigh = fB4SVeloHigh,
        _graduationYear = graduationYear,
        _name = name,
        _position = position,
        _profileImage = profileImage,
        _sLVeloAverage = sLVeloAverage,
        _sLVeloHigh = sLVeloHigh,
        _throw1 = throw1,
        _bbrpmmax = bbrpmmax,
        _bBVeloMAX = bBVeloMAX,
        _chrpmavg = chrpmavg,
        _cHVeloMAX = cHVeloMAX,
        _cPop = cPop,
        _cVelo = cVelo,
        _ev = ev,
        _email = email,
        _fbrpmmax = fbrpmmax,
        _fBVeloMAX = fBVeloMAX,
        _first = first,
        _iNFVelo = iNFVelo,
        _last = last,
        _oFVelo = oFVelo,
        _uniform = uniform,
        _year = year,
        _yd60 = yd60,
        super(firestoreUtilData);

  // "Bat" field.
  String? _bat;
  String get bat => _bat ?? '';
  set bat(String? val) => _bat = val;

  bool hasBat() => _bat != null;

  // "CBVeloAverage" field.
  String? _cBVeloAverage;
  String get cBVeloAverage => _cBVeloAverage ?? '';
  set cBVeloAverage(String? val) => _cBVeloAverage = val;

  bool hasCBVeloAverage() => _cBVeloAverage != null;

  // "CBVeloHigh" field.
  String? _cBVeloHigh;
  String get cBVeloHigh => _cBVeloHigh ?? '';
  set cBVeloHigh(String? val) => _cBVeloHigh = val;

  bool hasCBVeloHigh() => _cBVeloHigh != null;

  // "CHVeloAverage" field.
  String? _cHVeloAverage;
  String get cHVeloAverage => _cHVeloAverage ?? '';
  set cHVeloAverage(String? val) => _cHVeloAverage = val;

  bool hasCHVeloAverage() => _cHVeloAverage != null;

  // "CHVeloHigh" field.
  String? _cHVeloHigh;
  String get cHVeloHigh => _cHVeloHigh ?? '';
  set cHVeloHigh(String? val) => _cHVeloHigh = val;

  bool hasCHVeloHigh() => _cHVeloHigh != null;

  // "FB2SVeloAverage" field.
  String? _fB2SVeloAverage;
  String get fB2SVeloAverage => _fB2SVeloAverage ?? '';
  set fB2SVeloAverage(String? val) => _fB2SVeloAverage = val;

  bool hasFB2SVeloAverage() => _fB2SVeloAverage != null;

  // "FB2SVeloHigh" field.
  String? _fB2SVeloHigh;
  String get fB2SVeloHigh => _fB2SVeloHigh ?? '';
  set fB2SVeloHigh(String? val) => _fB2SVeloHigh = val;

  bool hasFB2SVeloHigh() => _fB2SVeloHigh != null;

  // "FB4SVeloAverage" field.
  String? _fB4SVeloAverage;
  String get fB4SVeloAverage => _fB4SVeloAverage ?? '';
  set fB4SVeloAverage(String? val) => _fB4SVeloAverage = val;

  bool hasFB4SVeloAverage() => _fB4SVeloAverage != null;

  // "FB4SVeloHigh" field.
  String? _fB4SVeloHigh;
  String get fB4SVeloHigh => _fB4SVeloHigh ?? '';
  set fB4SVeloHigh(String? val) => _fB4SVeloHigh = val;

  bool hasFB4SVeloHigh() => _fB4SVeloHigh != null;

  // "GraduationYear" field.
  String? _graduationYear;
  String get graduationYear => _graduationYear ?? '';
  set graduationYear(String? val) => _graduationYear = val;

  bool hasGraduationYear() => _graduationYear != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "Position" field.
  String? _position;
  String get position => _position ?? '';
  set position(String? val) => _position = val;

  bool hasPosition() => _position != null;

  // "ProfileImage" field.
  String? _profileImage;
  String get profileImage => _profileImage ?? '';
  set profileImage(String? val) => _profileImage = val;

  bool hasProfileImage() => _profileImage != null;

  // "SLVeloAverage" field.
  String? _sLVeloAverage;
  String get sLVeloAverage => _sLVeloAverage ?? '';
  set sLVeloAverage(String? val) => _sLVeloAverage = val;

  bool hasSLVeloAverage() => _sLVeloAverage != null;

  // "SLVeloHigh" field.
  String? _sLVeloHigh;
  String get sLVeloHigh => _sLVeloHigh ?? '';
  set sLVeloHigh(String? val) => _sLVeloHigh = val;

  bool hasSLVeloHigh() => _sLVeloHigh != null;

  // "Throw1" field.
  String? _throw1;
  String get throw1 => _throw1 ?? '';
  set throw1(String? val) => _throw1 = val;

  bool hasThrow1() => _throw1 != null;

  // "BBRPMMAX" field.
  String? _bbrpmmax;
  String get bbrpmmax => _bbrpmmax ?? '';
  set bbrpmmax(String? val) => _bbrpmmax = val;

  bool hasBbrpmmax() => _bbrpmmax != null;

  // "BBVeloMAX" field.
  String? _bBVeloMAX;
  String get bBVeloMAX => _bBVeloMAX ?? '';
  set bBVeloMAX(String? val) => _bBVeloMAX = val;

  bool hasBBVeloMAX() => _bBVeloMAX != null;

  // "CHRPMAVG" field.
  String? _chrpmavg;
  String get chrpmavg => _chrpmavg ?? '';
  set chrpmavg(String? val) => _chrpmavg = val;

  bool hasChrpmavg() => _chrpmavg != null;

  // "CHVeloMAX" field.
  String? _cHVeloMAX;
  String get cHVeloMAX => _cHVeloMAX ?? '';
  set cHVeloMAX(String? val) => _cHVeloMAX = val;

  bool hasCHVeloMAX() => _cHVeloMAX != null;

  // "CPop" field.
  String? _cPop;
  String get cPop => _cPop ?? '';
  set cPop(String? val) => _cPop = val;

  bool hasCPop() => _cPop != null;

  // "CVelo" field.
  String? _cVelo;
  String get cVelo => _cVelo ?? '';
  set cVelo(String? val) => _cVelo = val;

  bool hasCVelo() => _cVelo != null;

  // "EV" field.
  String? _ev;
  String get ev => _ev ?? '';
  set ev(String? val) => _ev = val;

  bool hasEv() => _ev != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "FBRPMMAX" field.
  String? _fbrpmmax;
  String get fbrpmmax => _fbrpmmax ?? '';
  set fbrpmmax(String? val) => _fbrpmmax = val;

  bool hasFbrpmmax() => _fbrpmmax != null;

  // "FBVeloMAX" field.
  String? _fBVeloMAX;
  String get fBVeloMAX => _fBVeloMAX ?? '';
  set fBVeloMAX(String? val) => _fBVeloMAX = val;

  bool hasFBVeloMAX() => _fBVeloMAX != null;

  // "First" field.
  String? _first;
  String get first => _first ?? '';
  set first(String? val) => _first = val;

  bool hasFirst() => _first != null;

  // "INFVelo" field.
  String? _iNFVelo;
  String get iNFVelo => _iNFVelo ?? '';
  set iNFVelo(String? val) => _iNFVelo = val;

  bool hasINFVelo() => _iNFVelo != null;

  // "Last" field.
  String? _last;
  String get last => _last ?? '';
  set last(String? val) => _last = val;

  bool hasLast() => _last != null;

  // "OFVelo" field.
  String? _oFVelo;
  String get oFVelo => _oFVelo ?? '';
  set oFVelo(String? val) => _oFVelo = val;

  bool hasOFVelo() => _oFVelo != null;

  // "Uniform" field.
  String? _uniform;
  String get uniform => _uniform ?? '';
  set uniform(String? val) => _uniform = val;

  bool hasUniform() => _uniform != null;

  // "Year" field.
  String? _year;
  String get year => _year ?? '';
  set year(String? val) => _year = val;

  bool hasYear() => _year != null;

  // "yd60" field.
  String? _yd60;
  String get yd60 => _yd60 ?? '';
  set yd60(String? val) => _yd60 = val;

  bool hasYd60() => _yd60 != null;

  static FieldsStruct fromMap(Map<String, dynamic> data) => FieldsStruct(
        bat: data['Bat'] as String?,
        cBVeloAverage: data['CBVeloAverage'] as String?,
        cBVeloHigh: data['CBVeloHigh'] as String?,
        cHVeloAverage: data['CHVeloAverage'] as String?,
        cHVeloHigh: data['CHVeloHigh'] as String?,
        fB2SVeloAverage: data['FB2SVeloAverage'] as String?,
        fB2SVeloHigh: data['FB2SVeloHigh'] as String?,
        fB4SVeloAverage: data['FB4SVeloAverage'] as String?,
        fB4SVeloHigh: data['FB4SVeloHigh'] as String?,
        graduationYear: data['GraduationYear'] as String?,
        name: data['Name'] as String?,
        position: data['Position'] as String?,
        profileImage: data['ProfileImage'] as String?,
        sLVeloAverage: data['SLVeloAverage'] as String?,
        sLVeloHigh: data['SLVeloHigh'] as String?,
        throw1: data['Throw1'] as String?,
        bbrpmmax: data['BBRPMMAX'] as String?,
        bBVeloMAX: data['BBVeloMAX'] as String?,
        chrpmavg: data['CHRPMAVG'] as String?,
        cHVeloMAX: data['CHVeloMAX'] as String?,
        cPop: data['CPop'] as String?,
        cVelo: data['CVelo'] as String?,
        ev: data['EV'] as String?,
        email: data['Email'] as String?,
        fbrpmmax: data['FBRPMMAX'] as String?,
        fBVeloMAX: data['FBVeloMAX'] as String?,
        first: data['First'] as String?,
        iNFVelo: data['INFVelo'] as String?,
        last: data['Last'] as String?,
        oFVelo: data['OFVelo'] as String?,
        uniform: data['Uniform'] as String?,
        year: data['Year'] as String?,
        yd60: data['yd60'] as String?,
      );

  static FieldsStruct? maybeFromMap(dynamic data) =>
      data is Map ? FieldsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Bat': _bat,
        'CBVeloAverage': _cBVeloAverage,
        'CBVeloHigh': _cBVeloHigh,
        'CHVeloAverage': _cHVeloAverage,
        'CHVeloHigh': _cHVeloHigh,
        'FB2SVeloAverage': _fB2SVeloAverage,
        'FB2SVeloHigh': _fB2SVeloHigh,
        'FB4SVeloAverage': _fB4SVeloAverage,
        'FB4SVeloHigh': _fB4SVeloHigh,
        'GraduationYear': _graduationYear,
        'Name': _name,
        'Position': _position,
        'ProfileImage': _profileImage,
        'SLVeloAverage': _sLVeloAverage,
        'SLVeloHigh': _sLVeloHigh,
        'Throw1': _throw1,
        'BBRPMMAX': _bbrpmmax,
        'BBVeloMAX': _bBVeloMAX,
        'CHRPMAVG': _chrpmavg,
        'CHVeloMAX': _cHVeloMAX,
        'CPop': _cPop,
        'CVelo': _cVelo,
        'EV': _ev,
        'Email': _email,
        'FBRPMMAX': _fbrpmmax,
        'FBVeloMAX': _fBVeloMAX,
        'First': _first,
        'INFVelo': _iNFVelo,
        'Last': _last,
        'OFVelo': _oFVelo,
        'Uniform': _uniform,
        'Year': _year,
        'yd60': _yd60,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Bat': serializeParam(
          _bat,
          ParamType.String,
        ),
        'CBVeloAverage': serializeParam(
          _cBVeloAverage,
          ParamType.String,
        ),
        'CBVeloHigh': serializeParam(
          _cBVeloHigh,
          ParamType.String,
        ),
        'CHVeloAverage': serializeParam(
          _cHVeloAverage,
          ParamType.String,
        ),
        'CHVeloHigh': serializeParam(
          _cHVeloHigh,
          ParamType.String,
        ),
        'FB2SVeloAverage': serializeParam(
          _fB2SVeloAverage,
          ParamType.String,
        ),
        'FB2SVeloHigh': serializeParam(
          _fB2SVeloHigh,
          ParamType.String,
        ),
        'FB4SVeloAverage': serializeParam(
          _fB4SVeloAverage,
          ParamType.String,
        ),
        'FB4SVeloHigh': serializeParam(
          _fB4SVeloHigh,
          ParamType.String,
        ),
        'GraduationYear': serializeParam(
          _graduationYear,
          ParamType.String,
        ),
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'Position': serializeParam(
          _position,
          ParamType.String,
        ),
        'ProfileImage': serializeParam(
          _profileImage,
          ParamType.String,
        ),
        'SLVeloAverage': serializeParam(
          _sLVeloAverage,
          ParamType.String,
        ),
        'SLVeloHigh': serializeParam(
          _sLVeloHigh,
          ParamType.String,
        ),
        'Throw1': serializeParam(
          _throw1,
          ParamType.String,
        ),
        'BBRPMMAX': serializeParam(
          _bbrpmmax,
          ParamType.String,
        ),
        'BBVeloMAX': serializeParam(
          _bBVeloMAX,
          ParamType.String,
        ),
        'CHRPMAVG': serializeParam(
          _chrpmavg,
          ParamType.String,
        ),
        'CHVeloMAX': serializeParam(
          _cHVeloMAX,
          ParamType.String,
        ),
        'CPop': serializeParam(
          _cPop,
          ParamType.String,
        ),
        'CVelo': serializeParam(
          _cVelo,
          ParamType.String,
        ),
        'EV': serializeParam(
          _ev,
          ParamType.String,
        ),
        'Email': serializeParam(
          _email,
          ParamType.String,
        ),
        'FBRPMMAX': serializeParam(
          _fbrpmmax,
          ParamType.String,
        ),
        'FBVeloMAX': serializeParam(
          _fBVeloMAX,
          ParamType.String,
        ),
        'First': serializeParam(
          _first,
          ParamType.String,
        ),
        'INFVelo': serializeParam(
          _iNFVelo,
          ParamType.String,
        ),
        'Last': serializeParam(
          _last,
          ParamType.String,
        ),
        'OFVelo': serializeParam(
          _oFVelo,
          ParamType.String,
        ),
        'Uniform': serializeParam(
          _uniform,
          ParamType.String,
        ),
        'Year': serializeParam(
          _year,
          ParamType.String,
        ),
        'yd60': serializeParam(
          _yd60,
          ParamType.String,
        ),
      }.withoutNulls;

  static FieldsStruct fromSerializableMap(Map<String, dynamic> data) =>
      FieldsStruct(
        bat: deserializeParam(
          data['Bat'],
          ParamType.String,
          false,
        ),
        cBVeloAverage: deserializeParam(
          data['CBVeloAverage'],
          ParamType.String,
          false,
        ),
        cBVeloHigh: deserializeParam(
          data['CBVeloHigh'],
          ParamType.String,
          false,
        ),
        cHVeloAverage: deserializeParam(
          data['CHVeloAverage'],
          ParamType.String,
          false,
        ),
        cHVeloHigh: deserializeParam(
          data['CHVeloHigh'],
          ParamType.String,
          false,
        ),
        fB2SVeloAverage: deserializeParam(
          data['FB2SVeloAverage'],
          ParamType.String,
          false,
        ),
        fB2SVeloHigh: deserializeParam(
          data['FB2SVeloHigh'],
          ParamType.String,
          false,
        ),
        fB4SVeloAverage: deserializeParam(
          data['FB4SVeloAverage'],
          ParamType.String,
          false,
        ),
        fB4SVeloHigh: deserializeParam(
          data['FB4SVeloHigh'],
          ParamType.String,
          false,
        ),
        graduationYear: deserializeParam(
          data['GraduationYear'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        position: deserializeParam(
          data['Position'],
          ParamType.String,
          false,
        ),
        profileImage: deserializeParam(
          data['ProfileImage'],
          ParamType.String,
          false,
        ),
        sLVeloAverage: deserializeParam(
          data['SLVeloAverage'],
          ParamType.String,
          false,
        ),
        sLVeloHigh: deserializeParam(
          data['SLVeloHigh'],
          ParamType.String,
          false,
        ),
        throw1: deserializeParam(
          data['Throw1'],
          ParamType.String,
          false,
        ),
        bbrpmmax: deserializeParam(
          data['BBRPMMAX'],
          ParamType.String,
          false,
        ),
        bBVeloMAX: deserializeParam(
          data['BBVeloMAX'],
          ParamType.String,
          false,
        ),
        chrpmavg: deserializeParam(
          data['CHRPMAVG'],
          ParamType.String,
          false,
        ),
        cHVeloMAX: deserializeParam(
          data['CHVeloMAX'],
          ParamType.String,
          false,
        ),
        cPop: deserializeParam(
          data['CPop'],
          ParamType.String,
          false,
        ),
        cVelo: deserializeParam(
          data['CVelo'],
          ParamType.String,
          false,
        ),
        ev: deserializeParam(
          data['EV'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['Email'],
          ParamType.String,
          false,
        ),
        fbrpmmax: deserializeParam(
          data['FBRPMMAX'],
          ParamType.String,
          false,
        ),
        fBVeloMAX: deserializeParam(
          data['FBVeloMAX'],
          ParamType.String,
          false,
        ),
        first: deserializeParam(
          data['First'],
          ParamType.String,
          false,
        ),
        iNFVelo: deserializeParam(
          data['INFVelo'],
          ParamType.String,
          false,
        ),
        last: deserializeParam(
          data['Last'],
          ParamType.String,
          false,
        ),
        oFVelo: deserializeParam(
          data['OFVelo'],
          ParamType.String,
          false,
        ),
        uniform: deserializeParam(
          data['Uniform'],
          ParamType.String,
          false,
        ),
        year: deserializeParam(
          data['Year'],
          ParamType.String,
          false,
        ),
        yd60: deserializeParam(
          data['yd60'],
          ParamType.String,
          false,
        ),
      );

  static FieldsStruct fromAlgoliaData(Map<String, dynamic> data) =>
      FieldsStruct(
        bat: convertAlgoliaParam(
          data['Bat'],
          ParamType.String,
          false,
        ),
        cBVeloAverage: convertAlgoliaParam(
          data['CBVeloAverage'],
          ParamType.String,
          false,
        ),
        cBVeloHigh: convertAlgoliaParam(
          data['CBVeloHigh'],
          ParamType.String,
          false,
        ),
        cHVeloAverage: convertAlgoliaParam(
          data['CHVeloAverage'],
          ParamType.String,
          false,
        ),
        cHVeloHigh: convertAlgoliaParam(
          data['CHVeloHigh'],
          ParamType.String,
          false,
        ),
        fB2SVeloAverage: convertAlgoliaParam(
          data['FB2SVeloAverage'],
          ParamType.String,
          false,
        ),
        fB2SVeloHigh: convertAlgoliaParam(
          data['FB2SVeloHigh'],
          ParamType.String,
          false,
        ),
        fB4SVeloAverage: convertAlgoliaParam(
          data['FB4SVeloAverage'],
          ParamType.String,
          false,
        ),
        fB4SVeloHigh: convertAlgoliaParam(
          data['FB4SVeloHigh'],
          ParamType.String,
          false,
        ),
        graduationYear: convertAlgoliaParam(
          data['GraduationYear'],
          ParamType.String,
          false,
        ),
        name: convertAlgoliaParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        position: convertAlgoliaParam(
          data['Position'],
          ParamType.String,
          false,
        ),
        profileImage: convertAlgoliaParam(
          data['ProfileImage'],
          ParamType.String,
          false,
        ),
        sLVeloAverage: convertAlgoliaParam(
          data['SLVeloAverage'],
          ParamType.String,
          false,
        ),
        sLVeloHigh: convertAlgoliaParam(
          data['SLVeloHigh'],
          ParamType.String,
          false,
        ),
        throw1: convertAlgoliaParam(
          data['Throw1'],
          ParamType.String,
          false,
        ),
        bbrpmmax: convertAlgoliaParam(
          data['BBRPMMAX'],
          ParamType.String,
          false,
        ),
        bBVeloMAX: convertAlgoliaParam(
          data['BBVeloMAX'],
          ParamType.String,
          false,
        ),
        chrpmavg: convertAlgoliaParam(
          data['CHRPMAVG'],
          ParamType.String,
          false,
        ),
        cHVeloMAX: convertAlgoliaParam(
          data['CHVeloMAX'],
          ParamType.String,
          false,
        ),
        cPop: convertAlgoliaParam(
          data['CPop'],
          ParamType.String,
          false,
        ),
        cVelo: convertAlgoliaParam(
          data['CVelo'],
          ParamType.String,
          false,
        ),
        ev: convertAlgoliaParam(
          data['EV'],
          ParamType.String,
          false,
        ),
        email: convertAlgoliaParam(
          data['Email'],
          ParamType.String,
          false,
        ),
        fbrpmmax: convertAlgoliaParam(
          data['FBRPMMAX'],
          ParamType.String,
          false,
        ),
        fBVeloMAX: convertAlgoliaParam(
          data['FBVeloMAX'],
          ParamType.String,
          false,
        ),
        first: convertAlgoliaParam(
          data['First'],
          ParamType.String,
          false,
        ),
        iNFVelo: convertAlgoliaParam(
          data['INFVelo'],
          ParamType.String,
          false,
        ),
        last: convertAlgoliaParam(
          data['Last'],
          ParamType.String,
          false,
        ),
        oFVelo: convertAlgoliaParam(
          data['OFVelo'],
          ParamType.String,
          false,
        ),
        uniform: convertAlgoliaParam(
          data['Uniform'],
          ParamType.String,
          false,
        ),
        year: convertAlgoliaParam(
          data['Year'],
          ParamType.String,
          false,
        ),
        yd60: convertAlgoliaParam(
          data['yd60'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'FieldsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FieldsStruct &&
        bat == other.bat &&
        cBVeloAverage == other.cBVeloAverage &&
        cBVeloHigh == other.cBVeloHigh &&
        cHVeloAverage == other.cHVeloAverage &&
        cHVeloHigh == other.cHVeloHigh &&
        fB2SVeloAverage == other.fB2SVeloAverage &&
        fB2SVeloHigh == other.fB2SVeloHigh &&
        fB4SVeloAverage == other.fB4SVeloAverage &&
        fB4SVeloHigh == other.fB4SVeloHigh &&
        graduationYear == other.graduationYear &&
        name == other.name &&
        position == other.position &&
        profileImage == other.profileImage &&
        sLVeloAverage == other.sLVeloAverage &&
        sLVeloHigh == other.sLVeloHigh &&
        throw1 == other.throw1 &&
        bbrpmmax == other.bbrpmmax &&
        bBVeloMAX == other.bBVeloMAX &&
        chrpmavg == other.chrpmavg &&
        cHVeloMAX == other.cHVeloMAX &&
        cPop == other.cPop &&
        cVelo == other.cVelo &&
        ev == other.ev &&
        email == other.email &&
        fbrpmmax == other.fbrpmmax &&
        fBVeloMAX == other.fBVeloMAX &&
        first == other.first &&
        iNFVelo == other.iNFVelo &&
        last == other.last &&
        oFVelo == other.oFVelo &&
        uniform == other.uniform &&
        year == other.year &&
        yd60 == other.yd60;
  }

  @override
  int get hashCode => const ListEquality().hash([
        bat,
        cBVeloAverage,
        cBVeloHigh,
        cHVeloAverage,
        cHVeloHigh,
        fB2SVeloAverage,
        fB2SVeloHigh,
        fB4SVeloAverage,
        fB4SVeloHigh,
        graduationYear,
        name,
        position,
        profileImage,
        sLVeloAverage,
        sLVeloHigh,
        throw1,
        bbrpmmax,
        bBVeloMAX,
        chrpmavg,
        cHVeloMAX,
        cPop,
        cVelo,
        ev,
        email,
        fbrpmmax,
        fBVeloMAX,
        first,
        iNFVelo,
        last,
        oFVelo,
        uniform,
        year,
        yd60
      ]);
}

FieldsStruct createFieldsStruct({
  String? bat,
  String? cBVeloAverage,
  String? cBVeloHigh,
  String? cHVeloAverage,
  String? cHVeloHigh,
  String? fB2SVeloAverage,
  String? fB2SVeloHigh,
  String? fB4SVeloAverage,
  String? fB4SVeloHigh,
  String? graduationYear,
  String? name,
  String? position,
  String? profileImage,
  String? sLVeloAverage,
  String? sLVeloHigh,
  String? throw1,
  String? bbrpmmax,
  String? bBVeloMAX,
  String? chrpmavg,
  String? cHVeloMAX,
  String? cPop,
  String? cVelo,
  String? ev,
  String? email,
  String? fbrpmmax,
  String? fBVeloMAX,
  String? first,
  String? iNFVelo,
  String? last,
  String? oFVelo,
  String? uniform,
  String? year,
  String? yd60,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FieldsStruct(
      bat: bat,
      cBVeloAverage: cBVeloAverage,
      cBVeloHigh: cBVeloHigh,
      cHVeloAverage: cHVeloAverage,
      cHVeloHigh: cHVeloHigh,
      fB2SVeloAverage: fB2SVeloAverage,
      fB2SVeloHigh: fB2SVeloHigh,
      fB4SVeloAverage: fB4SVeloAverage,
      fB4SVeloHigh: fB4SVeloHigh,
      graduationYear: graduationYear,
      name: name,
      position: position,
      profileImage: profileImage,
      sLVeloAverage: sLVeloAverage,
      sLVeloHigh: sLVeloHigh,
      throw1: throw1,
      bbrpmmax: bbrpmmax,
      bBVeloMAX: bBVeloMAX,
      chrpmavg: chrpmavg,
      cHVeloMAX: cHVeloMAX,
      cPop: cPop,
      cVelo: cVelo,
      ev: ev,
      email: email,
      fbrpmmax: fbrpmmax,
      fBVeloMAX: fBVeloMAX,
      first: first,
      iNFVelo: iNFVelo,
      last: last,
      oFVelo: oFVelo,
      uniform: uniform,
      year: year,
      yd60: yd60,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FieldsStruct? updateFieldsStruct(
  FieldsStruct? fields, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    fields
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFieldsStructData(
  Map<String, dynamic> firestoreData,
  FieldsStruct? fields,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (fields == null) {
    return;
  }
  if (fields.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && fields.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final fieldsData = getFieldsFirestoreData(fields, forFieldValue);
  final nestedData = fieldsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = fields.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFieldsFirestoreData(
  FieldsStruct? fields, [
  bool forFieldValue = false,
]) {
  if (fields == null) {
    return {};
  }
  final firestoreData = mapToFirestore(fields.toMap());

  // Add any Firestore field values
  fields.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFieldsListFirestoreData(
  List<FieldsStruct>? fieldss,
) =>
    fieldss?.map((e) => getFieldsFirestoreData(e, true)).toList() ?? [];
