import '/flutter_flow/flutter_flow_util.dart';
import 't4_enter_clock_w_b_widget.dart' show T4EnterClockWBWidget;
import 'package:flutter/material.dart';

class T4EnterClockWBModel extends FlutterFlowModel<T4EnterClockWBWidget> {
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
