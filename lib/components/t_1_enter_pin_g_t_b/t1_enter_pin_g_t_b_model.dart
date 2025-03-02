import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 't1_enter_pin_g_t_b_widget.dart' show T1EnterPinGTBWidget;
import 'package:flutter/material.dart';

class T1EnterPinGTBModel extends FlutterFlowModel<T1EnterPinGTBWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (BreakOut)] action in Container widget.
  ApiCallResponse? breakout;

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
