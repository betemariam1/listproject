import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _accesstoken = prefs.getString('ff_accesstoken') ?? _accesstoken;
    });
    _safeInit(() {
      _refreshtoken = prefs.getString('ff_refreshtoken') ?? _refreshtoken;
    });
    _safeInit(() {
      _baseballInforef =
          prefs.getString('ff_baseballInforef')?.ref ?? _baseballInforef;
    });
    _safeInit(() {
      _performanceref =
          prefs.getString('ff_performanceref')?.ref ?? _performanceref;
    });
    _safeInit(() {
      _personalref = prefs.getString('ff_personalref')?.ref ?? _personalref;
    });
    _safeInit(() {
      _performance = prefs.getString('ff_performance') ?? _performance;
    });
    _safeInit(() {
      _graduationYear = prefs.containsKey('ff_graduationYear')
          ? DateTime.fromMillisecondsSinceEpoch(
              prefs.getInt('ff_graduationYear')!)
          : _graduationYear;
    });
    _safeInit(() {
      _showStore = prefs.getBool('ff_showStore') ?? _showStore;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _accesstoken = '';
  String get accesstoken => _accesstoken;
  set accesstoken(String value) {
    _accesstoken = value;
    prefs.setString('ff_accesstoken', value);
  }

  String _refreshtoken = '';
  String get refreshtoken => _refreshtoken;
  set refreshtoken(String value) {
    _refreshtoken = value;
    prefs.setString('ff_refreshtoken', value);
  }

  DocumentReference? _baseballInforef =
      FirebaseFirestore.instance.doc('/pages/baseballInfo');
  DocumentReference? get baseballInforef => _baseballInforef;
  set baseballInforef(DocumentReference? value) {
    _baseballInforef = value;
    value != null
        ? prefs.setString('ff_baseballInforef', value.path)
        : prefs.remove('ff_baseballInforef');
  }

  DocumentReference? _performanceref =
      FirebaseFirestore.instance.doc('/pages/performance');
  DocumentReference? get performanceref => _performanceref;
  set performanceref(DocumentReference? value) {
    _performanceref = value;
    value != null
        ? prefs.setString('ff_performanceref', value.path)
        : prefs.remove('ff_performanceref');
  }

  DocumentReference? _personalref =
      FirebaseFirestore.instance.doc('/pages/personal');
  DocumentReference? get personalref => _personalref;
  set personalref(DocumentReference? value) {
    _personalref = value;
    value != null
        ? prefs.setString('ff_personalref', value.path)
        : prefs.remove('ff_personalref');
  }

  String _performance = 'personal';
  String get performance => _performance;
  set performance(String value) {
    _performance = value;
    prefs.setString('ff_performance', value);
  }

  int _initalvalue = 0;
  int get initalvalue => _initalvalue;
  set initalvalue(int value) {
    _initalvalue = value;
  }

  double _timer60 = 3.0;
  double get timer60 => _timer60;
  set timer60(double value) {
    _timer60 = value;
  }

  double _timedata = 3.0;
  double get timedata => _timedata;
  set timedata(double value) {
    _timedata = value;
  }

  int _initalvalue2 = 0;
  int get initalvalue2 => _initalvalue2;
  set initalvalue2(int value) {
    _initalvalue2 = value;
  }

  double _Gpa = 2.0;
  double get Gpa => _Gpa;
  set Gpa(double value) {
    _Gpa = value;
  }

  double _weight = 100.0;
  double get weight => _weight;
  set weight(double value) {
    _weight = value;
  }

  int _initalvalue3 = 0;
  int get initalvalue3 => _initalvalue3;
  set initalvalue3(int value) {
    _initalvalue3 = value;
  }

  int _initalvalue4 = 0;
  int get initalvalue4 => _initalvalue4;
  set initalvalue4(int value) {
    _initalvalue4 = value;
  }

  bool _isMediaAttached = false;
  bool get isMediaAttached => _isMediaAttached;
  set isMediaAttached(bool value) {
    _isMediaAttached = value;
  }

  bool _isVideoAttached = false;
  bool get isVideoAttached => _isVideoAttached;
  set isVideoAttached(bool value) {
    _isVideoAttached = value;
  }

  DocumentReference? _selectedCollege;
  DocumentReference? get selectedCollege => _selectedCollege;
  set selectedCollege(DocumentReference? value) {
    _selectedCollege = value;
  }

  String _selCollege = '';
  String get selCollege => _selCollege;
  set selCollege(String value) {
    _selCollege = value;
  }

  bool _showFullList = true;
  bool get showFullList => _showFullList;
  set showFullList(bool value) {
    _showFullList = value;
  }

  bool _Ispostselected = true;
  bool get Ispostselected => _Ispostselected;
  set Ispostselected(bool value) {
    _Ispostselected = value;
  }

  bool _isNotEmpty = false;
  bool get isNotEmpty => _isNotEmpty;
  set isNotEmpty(bool value) {
    _isNotEmpty = value;
  }

  List<String> _selectedYear = [];
  List<String> get selectedYear => _selectedYear;
  set selectedYear(List<String> value) {
    _selectedYear = value;
  }

  void addToSelectedYear(String value) {
    selectedYear.add(value);
  }

  void removeFromSelectedYear(String value) {
    selectedYear.remove(value);
  }

  void removeAtIndexFromSelectedYear(int index) {
    selectedYear.removeAt(index);
  }

  void updateSelectedYearAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedYear[index] = updateFn(_selectedYear[index]);
  }

  void insertAtIndexInSelectedYear(int index, String value) {
    selectedYear.insert(index, value);
  }

  List<String> _selectedState = [];
  List<String> get selectedState => _selectedState;
  set selectedState(List<String> value) {
    _selectedState = value;
  }

  void addToSelectedState(String value) {
    selectedState.add(value);
  }

  void removeFromSelectedState(String value) {
    selectedState.remove(value);
  }

  void removeAtIndexFromSelectedState(int index) {
    selectedState.removeAt(index);
  }

  void updateSelectedStateAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedState[index] = updateFn(_selectedState[index]);
  }

  void insertAtIndexInSelectedState(int index, String value) {
    selectedState.insert(index, value);
  }

  String _fbVelotop = '';
  String get fbVelotop => _fbVelotop;
  set fbVelotop(String value) {
    _fbVelotop = value;
  }

  String _fbVeloAverage = '';
  String get fbVeloAverage => _fbVeloAverage;
  set fbVeloAverage(String value) {
    _fbVeloAverage = value;
  }

  List<String> _selectedPositions = [];
  List<String> get selectedPositions => _selectedPositions;
  set selectedPositions(List<String> value) {
    _selectedPositions = value;
  }

  void addToSelectedPositions(String value) {
    selectedPositions.add(value);
  }

  void removeFromSelectedPositions(String value) {
    selectedPositions.remove(value);
  }

  void removeAtIndexFromSelectedPositions(int index) {
    selectedPositions.removeAt(index);
  }

  void updateSelectedPositionsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedPositions[index] = updateFn(_selectedPositions[index]);
  }

  void insertAtIndexInSelectedPositions(int index, String value) {
    selectedPositions.insert(index, value);
  }

  DocumentReference? _reportItems =
      FirebaseFirestore.instance.doc('/pages/reportItems');
  DocumentReference? get reportItems => _reportItems;
  set reportItems(DocumentReference? value) {
    _reportItems = value;
  }

  String _id = 'pro';
  String get id => _id;
  set id(String value) {
    _id = value;
  }

  String _thumbnailImage = '';
  String get thumbnailImage => _thumbnailImage;
  set thumbnailImage(String value) {
    _thumbnailImage = value;
  }

  bool _showPaywall = false;
  bool get showPaywall => _showPaywall;
  set showPaywall(bool value) {
    _showPaywall = value;
  }

  bool _showFullListFav = true;
  bool get showFullListFav => _showFullListFav;
  set showFullListFav(bool value) {
    _showFullListFav = value;
  }

  List<String> _userRefs = ['Hello World', 'Hello World', 'Hello World'];
  List<String> get userRefs => _userRefs;
  set userRefs(List<String> value) {
    _userRefs = value;
  }

  void addToUserRefs(String value) {
    userRefs.add(value);
  }

  void removeFromUserRefs(String value) {
    userRefs.remove(value);
  }

  void removeAtIndexFromUserRefs(int index) {
    userRefs.removeAt(index);
  }

  void updateUserRefsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    userRefs[index] = updateFn(_userRefs[index]);
  }

  void insertAtIndexInUserRefs(int index, String value) {
    userRefs.insert(index, value);
  }

  DateTime? _graduationYear;
  DateTime? get graduationYear => _graduationYear;
  set graduationYear(DateTime? value) {
    _graduationYear = value;
    value != null
        ? prefs.setInt('ff_graduationYear', value.millisecondsSinceEpoch)
        : prefs.remove('ff_graduationYear');
  }

  DocumentReference? _threadRef;
  DocumentReference? get threadRef => _threadRef;
  set threadRef(DocumentReference? value) {
    _threadRef = value;
  }

  DocumentReference? _campReference;
  DocumentReference? get campReference => _campReference;
  set campReference(DocumentReference? value) {
    _campReference = value;
  }

  List<String> _tweetID = [];
  List<String> get tweetID => _tweetID;
  set tweetID(List<String> value) {
    _tweetID = value;
  }

  void addToTweetID(String value) {
    tweetID.add(value);
  }

  void removeFromTweetID(String value) {
    tweetID.remove(value);
  }

  void removeAtIndexFromTweetID(int index) {
    tweetID.removeAt(index);
  }

  void updateTweetIDAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    tweetID[index] = updateFn(_tweetID[index]);
  }

  void insertAtIndexInTweetID(int index, String value) {
    tweetID.insert(index, value);
  }

  int _SATTotal = 0;
  int get SATTotal => _SATTotal;
  set SATTotal(int value) {
    _SATTotal = value;
  }

  String _youtubeLink = '';
  String get youtubeLink => _youtubeLink;
  set youtubeLink(String value) {
    _youtubeLink = value;
  }

  DocumentReference? _selectedProduct;
  DocumentReference? get selectedProduct => _selectedProduct;
  set selectedProduct(DocumentReference? value) {
    _selectedProduct = value;
  }

  double _flexValue = 1.5;
  double get flexValue => _flexValue;
  set flexValue(double value) {
    _flexValue = value;
  }

  bool _installAppAdd = false;
  bool get installAppAdd => _installAppAdd;
  set installAppAdd(bool value) {
    _installAppAdd = value;
  }

  List<String> _tweetIds = [];
  List<String> get tweetIds => _tweetIds;
  set tweetIds(List<String> value) {
    _tweetIds = value;
  }

  void addToTweetIds(String value) {
    tweetIds.add(value);
  }

  void removeFromTweetIds(String value) {
    tweetIds.remove(value);
  }

  void removeAtIndexFromTweetIds(int index) {
    tweetIds.removeAt(index);
  }

  void updateTweetIdsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    tweetIds[index] = updateFn(_tweetIds[index]);
  }

  void insertAtIndexInTweetIds(int index, String value) {
    tweetIds.insert(index, value);
  }

  bool _showStore = true;
  bool get showStore => _showStore;
  set showStore(bool value) {
    _showStore = value;
    prefs.setBool('ff_showStore', value);
  }

  bool _showTweet = false;
  bool get showTweet => _showTweet;
  set showTweet(bool value) {
    _showTweet = value;
  }

  String _throw1 = '';
  String get throw1 => _throw1;
  set throw1(String value) {
    _throw1 = value;
  }

  int _successPage = 0;
  int get successPage => _successPage;
  set successPage(int value) {
    _successPage = value;
  }

  List<CampFieldsStruct> _campFieldInputs = [];
  List<CampFieldsStruct> get campFieldInputs => _campFieldInputs;
  set campFieldInputs(List<CampFieldsStruct> value) {
    _campFieldInputs = value;
  }

  void addToCampFieldInputs(CampFieldsStruct value) {
    campFieldInputs.add(value);
  }

  void removeFromCampFieldInputs(CampFieldsStruct value) {
    campFieldInputs.remove(value);
  }

  void removeAtIndexFromCampFieldInputs(int index) {
    campFieldInputs.removeAt(index);
  }

  void updateCampFieldInputsAtIndex(
    int index,
    CampFieldsStruct Function(CampFieldsStruct) updateFn,
  ) {
    campFieldInputs[index] = updateFn(_campFieldInputs[index]);
  }

  void insertAtIndexInCampFieldInputs(int index, CampFieldsStruct value) {
    campFieldInputs.insert(index, value);
  }

  int _index = 0;
  int get index => _index;
  set index(int value) {
    _index = value;
  }

  bool _showMessage = false;
  bool get showMessage => _showMessage;
  set showMessage(bool value) {
    _showMessage = value;
  }

  String _selectedMetrics = 'FB 4S Velo High';
  String get selectedMetrics => _selectedMetrics;
  set selectedMetrics(String value) {
    _selectedMetrics = value;
  }

  List<String> _selectedFilterBats = [];
  List<String> get selectedFilterBats => _selectedFilterBats;
  set selectedFilterBats(List<String> value) {
    _selectedFilterBats = value;
  }

  void addToSelectedFilterBats(String value) {
    selectedFilterBats.add(value);
  }

  void removeFromSelectedFilterBats(String value) {
    selectedFilterBats.remove(value);
  }

  void removeAtIndexFromSelectedFilterBats(int index) {
    selectedFilterBats.removeAt(index);
  }

  void updateSelectedFilterBatsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedFilterBats[index] = updateFn(_selectedFilterBats[index]);
  }

  void insertAtIndexInSelectedFilterBats(int index, String value) {
    selectedFilterBats.insert(index, value);
  }

  List<String> _selectedFilterYears = [];
  List<String> get selectedFilterYears => _selectedFilterYears;
  set selectedFilterYears(List<String> value) {
    _selectedFilterYears = value;
  }

  void addToSelectedFilterYears(String value) {
    selectedFilterYears.add(value);
  }

  void removeFromSelectedFilterYears(String value) {
    selectedFilterYears.remove(value);
  }

  void removeAtIndexFromSelectedFilterYears(int index) {
    selectedFilterYears.removeAt(index);
  }

  void updateSelectedFilterYearsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedFilterYears[index] = updateFn(_selectedFilterYears[index]);
  }

  void insertAtIndexInSelectedFilterYears(int index, String value) {
    selectedFilterYears.insert(index, value);
  }

  List<String> _selectedFilterThrows = ['Right', 'Left', 'Switch'];
  List<String> get selectedFilterThrows => _selectedFilterThrows;
  set selectedFilterThrows(List<String> value) {
    _selectedFilterThrows = value;
  }

  void addToSelectedFilterThrows(String value) {
    selectedFilterThrows.add(value);
  }

  void removeFromSelectedFilterThrows(String value) {
    selectedFilterThrows.remove(value);
  }

  void removeAtIndexFromSelectedFilterThrows(int index) {
    selectedFilterThrows.removeAt(index);
  }

  void updateSelectedFilterThrowsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedFilterThrows[index] = updateFn(_selectedFilterThrows[index]);
  }

  void insertAtIndexInSelectedFilterThrows(int index, String value) {
    selectedFilterThrows.insert(index, value);
  }

  List<String> _selectedFilterPositions = [
    'RHP',
    'LHP',
    '1st',
    '2nd',
    '3rd',
    'SS',
    'C',
    'LF',
    'CF',
    'MIF',
    'RF'
  ];
  List<String> get selectedFilterPositions => _selectedFilterPositions;
  set selectedFilterPositions(List<String> value) {
    _selectedFilterPositions = value;
  }

  void addToSelectedFilterPositions(String value) {
    selectedFilterPositions.add(value);
  }

  void removeFromSelectedFilterPositions(String value) {
    selectedFilterPositions.remove(value);
  }

  void removeAtIndexFromSelectedFilterPositions(int index) {
    selectedFilterPositions.removeAt(index);
  }

  void updateSelectedFilterPositionsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedFilterPositions[index] = updateFn(_selectedFilterPositions[index]);
  }

  void insertAtIndexInSelectedFilterPositions(int index, String value) {
    selectedFilterPositions.insert(index, value);
  }

  DocumentReference? _eventReference =
      FirebaseFirestore.instance.doc('/events/yFzNzz1n94JZrAqvltH2');
  DocumentReference? get eventReference => _eventReference;
  set eventReference(DocumentReference? value) {
    _eventReference = value;
  }

  String _pwd = '123456';
  String get pwd => _pwd;
  set pwd(String value) {
    _pwd = value;
  }

  bool _expanded = false;
  bool get expanded => _expanded;
  set expanded(bool value) {
    _expanded = value;
  }

  bool _settingExpanded = false;
  bool get settingExpanded => _settingExpanded;
  set settingExpanded(bool value) {
    _settingExpanded = value;
  }

  bool _editExpanded = false;
  bool get editExpanded => _editExpanded;
  set editExpanded(bool value) {
    _editExpanded = value;
  }

  int _navIndex = 0;
  int get navIndex => _navIndex;
  set navIndex(int value) {
    _navIndex = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
