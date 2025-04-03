import '/backend/api_requests/api_calls.dart';
import '/components/up_pass_conf_popup/up_pass_conf_popup_widget.dart';
import '/components/wrong/wrong_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'update_password_pop_widget.dart' show UpdatePasswordPopWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdatePasswordPopModel extends FlutterFlowModel<UpdatePasswordPopWidget> {
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
  ApiCallResponse? _apiResultiet;
  set apiResultiet(ApiCallResponse? value) {
    _apiResultiet = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get apiResultiet => _apiResultiet;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    currPasswordVisibility = false;
    pinCodeController = TextEditingController()
      ..addListener(() {
        debugLogWidgetClass(this);
      });
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

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'apitoken': debugSerializeParam(
            widget?.apitoken,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=UpdatePasswordPop',
            searchReference:
                'reference=ShoKEgoIYXBpdG9rZW4SBjllbm5hcHIECAMgAVAAWghhcGl0b2tlbg==',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        widgetStates: {
          'currPasswordText': debugSerializeParam(
            currPasswordTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=UpdatePasswordPop',
            name: 'String',
            nullable: true,
          ),
          'pinCodeText': debugSerializeParam(
            pinCodeController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=UpdatePasswordPop',
            name: 'String',
            nullable: true,
          ),
          'newpasswordText': debugSerializeParam(
            newpasswordTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=UpdatePasswordPop',
            name: 'String',
            nullable: true,
          ),
          'newpasswordconfText': debugSerializeParam(
            newpasswordconfTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=UpdatePasswordPop',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'apiResultiet': debugSerializeParam(
            apiResultiet,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=UpdatePasswordPop',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=UpdatePasswordPop',
        searchReference:
            'reference=OhFVcGRhdGVQYXNzd29yZFBvcFAAWhFVcGRhdGVQYXNzd29yZFBvcA==',
        widgetClassName: 'UpdatePasswordPop',
      );
}
