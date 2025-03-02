import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'enter_pin_reconfirm_widget.dart' show EnterPinReconfirmWidget;
import 'package:flutter/material.dart';

class EnterPinReconfirmModel extends FlutterFlowModel<EnterPinReconfirmWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (UpdateEmpStatus)] action in Button widget.
  ApiCallResponse? apiResult6stCopy4;

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
