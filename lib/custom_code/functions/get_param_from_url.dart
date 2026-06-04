import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/firebase_auth/auth_util.dart';

String? getParamFromUrl(String? inputParam) {
  String? customerId;
  String? refId;
  Uri uri = Uri.base;
  print(uri);

  // Extract query parameters
  customerId = '${uri.queryParameters['customer_id']}';
  refId = '${uri.queryParameters['ref_id']}';

  if ('${inputParam!}' == 'customer_id') {
    return '${customerId!}';
  } else if ('${inputParam!}' == 'ref_id') {
    return '${refId!}';
  }

  print("customer_id: $customerId");
  print("ref_id: $refId");
  return '';
}
