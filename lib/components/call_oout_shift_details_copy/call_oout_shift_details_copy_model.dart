import '/flutter_flow/flutter_flow_util.dart';
import 'call_oout_shift_details_copy_widget.dart'
    show CallOoutShiftDetailsCopyWidget;
import 'package:flutter/material.dart';

class CallOoutShiftDetailsCopyModel
    extends FlutterFlowModel<CallOoutShiftDetailsCopyWidget> {
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
