import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 't3_job_clock_in_widget.dart' show T3JobClockInWidget;
import 'package:flutter/material.dart';

class T3JobClockInModel extends FlutterFlowModel<T3JobClockInWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (ClientDetailByCode)] action in PinCode widget.
  ApiCallResponse? clientDetialbyCodeRes;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (ClockInStatus)] action in Circle widget.
  ApiCallResponse? clockInStatus;
  // Stores action output result for [Backend Call - API (ClockIn)] action in Circle widget.
  ApiCallResponse? clockInShift;

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
