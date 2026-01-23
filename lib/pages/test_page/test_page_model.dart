import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'test_page_widget.dart' show TestPageWidget;
import 'package:flutter/material.dart';

class TestPageModel extends FlutterFlowModel<TestPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getOnboadingUrlAPI)] action in TestPage widget.
  ApiCallResponse? getOnboardingOutput;
  // Stores action output result for [Backend Call - API (streamBlockfinAPI)] action in TestPage widget.
  ApiCallResponse? listenOcrResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
