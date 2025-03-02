import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'update_p_i_npop_widget.dart' show UpdatePINpopWidget;
import 'package:flutter/material.dart';

class UpdatePINpopModel extends FlutterFlowModel<UpdatePINpopWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for current_pin widget.
  TextEditingController? currentPin;
  FocusNode? currentPinFocusNode;
  String? Function(BuildContext, String?)? currentPinValidator;
  // State field(s) for new_pin widget.
  TextEditingController? newPin;
  FocusNode? newPinFocusNode;
  String? Function(BuildContext, String?)? newPinValidator;
  // State field(s) for re_new_pin widget.
  TextEditingController? reNewPin;
  FocusNode? reNewPinFocusNode;
  String? Function(BuildContext, String?)? reNewPinValidator;
  // Stores action output result for [Backend Call - API (UpadtePIN)] action in Button widget.
  ApiCallResponse? apiResultx5m;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    currentPin = TextEditingController();
    newPin = TextEditingController();
    reNewPin = TextEditingController();
  }

  @override
  void dispose() {
    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    currentPinFocusNode?.dispose();
    currentPin?.dispose();

    newPinFocusNode?.dispose();
    newPin?.dispose();

    reNewPinFocusNode?.dispose();
    reNewPin?.dispose();
  }
}
