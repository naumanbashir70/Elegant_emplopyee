import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'update_address_widget.dart' show UpdateAddressWidget;
import 'package:flutter/material.dart';

class UpdateAddressModel extends FlutterFlowModel<UpdateAddressWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for streetnma widget.
  FocusNode? streetnmaFocusNode;
  TextEditingController? streetnmaTextController;
  String? Function(BuildContext, String?)? streetnmaTextControllerValidator;
  // State field(s) for Apt widget.
  FocusNode? aptFocusNode;
  TextEditingController? aptTextController;
  String? Function(BuildContext, String?)? aptTextControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode1;
  TextEditingController? cityTextController1;
  String? Function(BuildContext, String?)? cityTextController1Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode2;
  TextEditingController? cityTextController2;
  String? Function(BuildContext, String?)? cityTextController2Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode3;
  TextEditingController? cityTextController3;
  String? Function(BuildContext, String?)? cityTextController3Validator;
  // Stores action output result for [Backend Call - API (UpdateAddress)] action in Button widget.
  ApiCallResponse? apiResultxku;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    streetnmaFocusNode?.dispose();
    streetnmaTextController?.dispose();

    aptFocusNode?.dispose();
    aptTextController?.dispose();

    cityFocusNode1?.dispose();
    cityTextController1?.dispose();

    cityFocusNode2?.dispose();
    cityTextController2?.dispose();

    cityFocusNode3?.dispose();
    cityTextController3?.dispose();
  }
}
