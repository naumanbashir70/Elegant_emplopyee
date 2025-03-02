import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'enter_pin_profile_num_prim_widget.dart'
    show EnterPinProfileNumPrimWidget;
import 'package:flutter/material.dart';

class EnterPinProfileNumPrimModel
    extends FlutterFlowModel<EnterPinProfileNumPrimWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (UpdatePhone)] action in Button widget.
  ApiCallResponse? apiPhoneUpdate;

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
