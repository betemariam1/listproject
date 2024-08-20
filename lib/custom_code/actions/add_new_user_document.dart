// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<DocumentReference> addNewUserDocument(
  String email,
  String firstName,
  String lastName,
  String graduationYear,
  String selfReportedWeightedGPA,
  String uid,
  String type,
) async {
  // Add your function code here!
  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection('users');

  final DocumentReference newUserDocRef = usersCollection.doc(uid);

  final Map<String, dynamic> newUserDocData = {
    'email': email.toLowerCase(),
    'firstName': firstName,
    'lastName': lastName,
    'graduationYear': graduationYear,
    'selfReportedWeightedGPA': selfReportedWeightedGPA,
    'userrole': 'Player',
    'onboardingDetailsCompeleted': true,
    'playerSelectedSport': type,
    'uid': uid,
    'created_time': FieldValue.serverTimestamp()
  };

  await newUserDocRef.set(newUserDocData);

  return newUserDocRef;
}
