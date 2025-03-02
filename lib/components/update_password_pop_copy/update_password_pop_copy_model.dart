import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'update_password_pop_copy_widget.dart' show UpdatePasswordPopCopyWidget;
import 'package:flutter/material.dart';

class UpdatePasswordPopCopyModel
    extends FlutterFlowModel<UpdatePasswordPopCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for curr_password widget.
  FocusNode? currPasswordFocusNode;
  TextEditingController? currPasswordTextController;
  late bool currPasswordVisibility;
  String? Function(BuildContext, String?)? currPasswordTextControllerValidator;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // State field(s) for newpassword widget.
  FocusNode? newpasswordFocusNode;
  TextEditingController? newpasswordTextController;
  late bool newpasswordVisibility;
  String? Function(BuildContext, String?)? newpasswordTextControllerValidator;
  // State field(s) for newpasswordconf widget.
  FocusNode? newpasswordconfFocusNode;
  TextEditingController? newpasswordconfTextController;
  late bool newpasswordconfVisibility;
  String? Function(BuildContext, String?)?
      newpasswordconfTextControllerValidator;
  // Stores action output result for [Backend Call - API (UpdatePassword)] action in Button widget.
  ApiCallResponse? apiResultiet;

  @override
  void initState(BuildContext context) {
    currPasswordVisibility = false;
    pinCodeController = TextEditingController();
    newpasswordVisibility = false;
    newpasswordconfVisibility = false;
  }

  @override
  void dispose() {
    currPasswordFocusNode?.dispose();
    currPasswordTextController?.dispose();

    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();

    newpasswordFocusNode?.dispose();
    newpasswordTextController?.dispose();

    newpasswordconfFocusNode?.dispose();
    newpasswordconfTextController?.dispose();
  }
}
