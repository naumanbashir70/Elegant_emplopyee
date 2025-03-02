import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'enter_pin_time_changed_a_c_c_e_p_t_widget.dart'
    show EnterPinTimeChangedACCEPTWidget;
import 'package:flutter/material.dart';

class EnterPinTimeChangedACCEPTModel
    extends FlutterFlowModel<EnterPinTimeChangedACCEPTWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (UpdateEmpStatus)] action in Button widget.
  ApiCallResponse? apiResult6stCopy;

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
