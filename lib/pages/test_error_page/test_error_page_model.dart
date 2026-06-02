import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'test_error_page_widget.dart' show TestErrorPageWidget;
import 'package:flutter/material.dart';

class TestErrorPageModel extends FlutterFlowModel<TestErrorPageWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataRbv = false;
  FFUploadedFile uploadedLocalFile_uploadDataRbv =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Backend Call - API (OcrDocumentApi)] action in Button widget.
  ApiCallResponse? apiResultt7v;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
