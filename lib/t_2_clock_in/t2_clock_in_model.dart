import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 't2_clock_in_widget.dart' show T2ClockInWidget;
import 'package:flutter/material.dart';

class T2ClockInModel extends FlutterFlowModel<T2ClockInWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (ClockInStatus)] action in Circle widget.
  ApiCallResponse? statusCheck;
  // Stores action output result for [Backend Call - API (ClockIn)] action in Circle widget.
  ApiCallResponse? clockein;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
