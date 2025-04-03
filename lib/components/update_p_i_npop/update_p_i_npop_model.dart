import '/backend/api_requests/api_calls.dart';
import '/components/up_p_i_n_conf_popup/up_p_i_n_conf_popup_widget.dart';
import '/components/wrong/wrong_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'update_p_i_npop_widget.dart' show UpdatePINpopWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
  ApiCallResponse? _apiResultx5m;
  set apiResultx5m(ApiCallResponse? value) {
    _apiResultx5m = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get apiResultx5m => _apiResultx5m;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    currentPin = TextEditingController()
      ..addListener(() {
        debugLogWidgetClass(this);
      });
    newPin = TextEditingController()
      ..addListener(() {
        debugLogWidgetClass(this);
      });
    reNewPin = TextEditingController()
      ..addListener(() {
        debugLogWidgetClass(this);
      });
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

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'apitokens': debugSerializeParam(
            widget?.apitokens,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=UpdatePINpop',
            searchReference:
                'reference=ShsKEwoJYXBpdG9rZW5zEgYxMGFwNXVyBAgDIAFQAFoJYXBpdG9rZW5z',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        widgetStates: {
          'passwordText': debugSerializeParam(
            passwordTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=UpdatePINpop',
            name: 'String',
            nullable: true,
          ),
          'currentPinText': debugSerializeParam(
            currentPin?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=UpdatePINpop',
            name: 'String',
            nullable: true,
          ),
          'newPinText': debugSerializeParam(
            newPin?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=UpdatePINpop',
            name: 'String',
            nullable: true,
          ),
          'reNewPinText': debugSerializeParam(
            reNewPin?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=UpdatePINpop',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'apiResultx5m': debugSerializeParam(
            apiResultx5m,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=UpdatePINpop',
            name: 'ApiCallResponse',
            nullable: true,
          )
        },
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=UpdatePINpop',
        searchReference: 'reference=OgxVcGRhdGVQSU5wb3BQAFoMVXBkYXRlUElOcG9w',
        widgetClassName: 'UpdatePINpop',
      );
}
