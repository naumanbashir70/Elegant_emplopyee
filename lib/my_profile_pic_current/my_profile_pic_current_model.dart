import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'my_profile_pic_current_widget.dart' show MyProfilePicCurrentWidget;
import 'package:flutter/material.dart';

class MyProfilePicCurrentModel
    extends FlutterFlowModel<MyProfilePicCurrentWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (UplaodProfilePic)] action in Button widget.
  ApiCallResponse? apiResulttfu;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
