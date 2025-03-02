import '/flutter_flow/flutter_flow_util.dart';
import 'enter_pin_pref_job_widget.dart' show EnterPinPrefJobWidget;
import 'package:flutter/material.dart';

class EnterPinPrefJobModel extends FlutterFlowModel<EnterPinPrefJobWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

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
