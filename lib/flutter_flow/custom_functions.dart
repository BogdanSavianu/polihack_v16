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

List<DateTime> occupiedTime(
  DateTime from,
  List<DateTime> occupiedTimes,
) {
  // Round the current time to the nearest :30 minutes or :00
  int currentMinute = from.minute;
  int roundedMinute = currentMinute < 30 ? 30 : 0;
  int currentHour = from.hour;
  int roundedHour = currentMinute == 0 ? currentHour++ : currentHour;
  DateTime roundedTime =
      DateTime(from.year, from.month, from.day, roundedHour, roundedMinute);
  DateTime midnight = DateTime(from.year, from.month, from.day, 23, 30);

  // Generate a list of all times in the interval
  List<DateTime> allTimes = [];
  for (DateTime time = roundedTime;
      time.isBefore(midnight);
      time = time.add(Duration(minutes: 30))) {
    allTimes.add(time);
  }

  // Filter out the occupied times from the list of all times
  occupiedTimes =
      allTimes.where((time) => !occupiedTimes.contains(time)).toList();

  return occupiedTimes;
}

double? computeGrade(List<GradesRecord> givenGrades) {
  double total = 0.0;
  Set<DocumentReference?> judges = new Set();

  for (var choice in givenGrades) {
    total += choice.grade.grade * choice.grade.weight;
    judges.add(choice.judge);
  }

  return total / 100 / judges.length;
}
