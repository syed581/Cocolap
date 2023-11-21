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
import '/auth/firebase_auth/auth_util.dart';

double? totalprize(
  double seed,
  double cgop,
) {
  return seed + cgop;
}

int? totalcount(List<OederlistRecord>? doc) {
  if (doc == null) return 0;
  return doc.length;
}

double? oedreitems(int? oredr) {
  return oredr != null ? oredr / 100 : null;
}

double countcolletion(List<OederlistRecord> collection) {
  int doublei = collection.length;
  return doublei / 100;
}

double? comptetorder(List<OederlistRecord> compt) {
  int comt = (compt.length) - 1;
  return comt / 100;
}
