import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  CheckinDataModelStruct? checkinData;
  void updateCheckinDataStruct(Function(CheckinDataModelStruct) updateFn) {
    updateFn(checkinData ??= CheckinDataModelStruct());
  }

  String? text;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataXwk = false;
  FFUploadedFile uploadedLocalFile_uploadDataXwk =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
