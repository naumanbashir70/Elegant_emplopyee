import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'my_profile_update_email_widget.dart' show MyProfileUpdateEmailWidget;
import 'package:flutter/material.dart';

class MyProfileUpdateEmailModel
    extends FlutterFlowModel<MyProfileUpdateEmailWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailupdate widget.
  FocusNode? emailupdateFocusNode;
  TextEditingController? emailupdateTextController;
  String? Function(BuildContext, String?)? emailupdateTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailupdateFocusNode?.dispose();
    emailupdateTextController?.dispose();
  }
}
