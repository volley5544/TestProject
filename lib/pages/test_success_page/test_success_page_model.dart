import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'test_success_page_widget.dart' show TestSuccessPageWidget;
import 'package:flutter/material.dart';

class TestSuccessPageModel extends FlutterFlowModel<TestSuccessPageWidget> {
  ///  Local state fields for this page.

  CheckinDataModelStruct? checkinData;
  void updateCheckinDataStruct(Function(CheckinDataModelStruct) updateFn) {
    updateFn(checkinData ??= CheckinDataModelStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (CustomerSearchApi)] action in TestSuccessPage widget.
  ApiCallResponse? customerSearchApiOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
