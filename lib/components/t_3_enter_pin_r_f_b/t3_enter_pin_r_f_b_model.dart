import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 't3_enter_pin_r_f_b_widget.dart' show T3EnterPinRFBWidget;
import 'package:flutter/material.dart';

class T3EnterPinRFBModel extends FlutterFlowModel<T3EnterPinRFBWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (BreakIn)] action in Button widget.
  ApiCallResponse? breakIn;

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
