import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

List<String> graduation() {
  // get the current year and generate the next 5 years and return list
  int currentYear = DateTime.now().year;
  List<String> graduationYears = [];
  for (int i = 0; i < 6; i++) {
    graduationYears.add((currentYear + i).toString());
  }
  return graduationYears;
}

String? createDynamicLink(
  String? dynamicLinkDomain,
  String? packageName,
  String? deepLink,
  String? params,
) {
  // null safety
  dynamicLinkDomain ??= 'https://example.page.link';
  packageName ??= 'app.example.com';
  deepLink ??= 'page';
  params ??= '';

  // more info- https://firebase.google.com/docs/dynamic-links/create-manually

  // build the dynamic link
  String dynamicLinkCombined = dynamicLinkDomain + '?';

  // apn	The package name of the Android app to use to open the link. The app must be connected to your project from the Overview page of the Firebase console. Required for the Dynamic Link to open an Android app.
  dynamicLinkCombined += 'apn=' + packageName + '&';

  // ibi	The bundle ID of the iOS app to use to open the link. The app must be connected to your project from the Overview page of the Firebase console. Required for the Dynamic Link to open an iOS app.
  dynamicLinkCombined += 'ibi=' + packageName + '&';

  String link = 'link=' +
      Uri.encodeComponent(dynamicLinkDomain + '/' + deepLink + '?' + params);

  dynamicLinkCombined += link;

  return dynamicLinkCombined;
}

String createRedirectLink(
  String productRef,
  bool discountUsed,
  String discountID,
  bool isRefillable,
  String productTitle,
  String productDescription,
  double amount,
  int refillNumber,
) {
  String baseUrl = 'abplayers://academicballerweb.page.link/successPaymentPage';
  // more info- https://firebase.google.com/docs/dynamic-links/create-manually

  // build the dynamic link
  String redirectURL = baseUrl + '?';
  redirectURL += 'productRef=' + productRef + '&';
  redirectURL += 'discountUsed=' + discountUsed.toString() + '&';
  redirectURL += 'isRefillable=' + isRefillable.toString() + '&';
  redirectURL += 'productTitle=' + productTitle.replaceAll(' ', '+') + '&';
  redirectURL +=
      'productDescription=' + productDescription.replaceAll(' ', '+') + '&';
  redirectURL += 'amount=' + amount.toString() + '&';
  if (discountUsed) {
    redirectURL += 'refillNumber=' + refillNumber.toString() + '&';
    redirectURL += 'discountID=' + discountID;
  } else {
    redirectURL += 'refillNumber=' + refillNumber.toString();
  }

  return redirectURL;
}

List<String> getListCountryCode() {
  return [
    '+1',
    '+7',
    '+20',
    '+27',
    '+30',
    '+31',
    '+32',
    '+33',
    '+34',
    '+36',
    '+39',
    '+40',
    '+41',
    '+43',
    '+44',
    '+45',
    '+46',
    '+47',
    '+48',
    '+49',
    '+51',
    '+52',
    '+53',
    '+54',
    '+55',
    '+56',
    '+57',
    '+58',
    '+60',
    '+61',
    '+62',
    '+63',
    '+64',
    '+65',
    '+66',
    '+81',
    '+82',
    '+84',
    '+86',
    '+90',
    '+91',
    '+92',
    '+93',
    '+94',
    '+95',
    '+98',
    '+211',
    '+212',
    '+213',
    '+216',
    '+218',
    '+220',
    '+221',
    '+222',
    '+223',
    '+224',
    '+225',
    '+226',
    '+227',
    '+228',
    '+229',
    '+230',
    '+231',
    '+232',
    '+233',
    '+234',
    '+235',
    '+236',
    '+237',
    '+238',
    '+239',
    '+240',
    '+241',
    '+242',
    '+243',
    '+244',
    '+245',
    '+246',
    '+248',
    '+249',
    '+250',
    '+252',
    '+253',
    '+254',
    '+255',
    '+256',
    '+257',
    '+258',
    '+260',
    '+261',
    '+262',
    '+263',
    '+264',
    '+265',
    '+266',
    '+267',
    '+268',
    '+269',
    '+290',
    '+291',
    '+297',
    '+298',
    '+299',
    '+350',
    '+351',
    '+352',
    '+353',
    '+354',
    '+355',
    '+356',
    '+357',
    '+358',
    '+359',
    '+370',
    '+371',
    '+372',
    '+373',
    '+374',
    '+375',
    '+376',
    '+377',
    '+378',
    '+379',
    '+380',
    '+381',
    '+382',
    '+383',
    '+385',
    '+386',
    '+387',
    '+389',
    '+420',
    '+421',
    '+423',
    '+500',
    '+501',
    '+502',
    '+503',
    '+504',
    '+505',
    '+506',
    '+507',
    '+508',
    '+509',
    '+590',
    '+591',
    '+592',
    '+593',
    '+594',
    '+595',
    '+596',
    '+597',
    '+598',
    '+599',
    '+670',
    '+672',
    '+673',
    '+674',
    '+675',
    '+676',
    '+677',
    '+678',
    '+679',
    '+680',
    '+681',
    '+682',
    '+683',
    '+685',
    '+686',
    '+687',
    '+688',
    '+689',
    '+690',
    '+691',
    '+692',
    '+850',
    '+852',
    '+853',
    '+855',
    '+856',
    '+880',
    '+886',
    '+960',
    '+961',
    '+962',
    '+963',
    '+964',
    '+965',
    '+966',
    '+967',
    '+968',
    '+970',
    '+971',
    '+972',
    '+973',
    '+974',
    '+975',
    '+976',
    '+977',
    '+992',
    '+993',
    '+994',
    '+995',
    '+996',
    '+998'
  ];
}

int changetoroundoffinteger(double priceInDouble) {
  // change input double to round off integer as return value
  return priceInDouble.round();
}

int spots(
  int remainingSpots,
  int totalSpots,
) {
  return totalSpots - remainingSpots;
}

String separateString(
  String displayName,
  int index,
) {
  // separate string with space and return the 1st string before space if null return -
  if (displayName == null) {
    return '-';
  }
  final split = displayName.split(' ');
  if (split.length > index) {
    return split[index];
  } else {
    return '-';
  }
}

String textFormat(String text) {
  return text.replaceAll('\\n', '\n');
}

String textFormat2(String text) {
  return text.replaceAll('\n', ' \\n ');
}

bool validateEmail(String email) {
  // a function that validates an input for a valid email address and returns true or false
  final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return emailRegex.hasMatch(email);
}

String updateTextFormat(String text) {
  return text.replaceAll(' - ', '\n');
}

String updateFormat(
  String text,
  int index,
) {
  List<String> parts = text.split(' ');
  if (index >= 0 && index < parts.length) {
    return parts[index];
  }
  return '';
}
