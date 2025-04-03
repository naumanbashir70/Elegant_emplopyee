import '/backend/api_requests/api_calls.dart';
import '/components/email_confirm_pop/email_confirm_pop_widget.dart';
import '/components/wrong/wrong_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'email_confirm_pop_info_widget.dart' show EmailConfirmPopInfoWidget;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EmailConfirmPopInfoModel
    extends FlutterFlowModel<EmailConfirmPopInfoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (UpdateEmail)] action in Button widget.
  ApiCallResponse? _apiResultaph;
  set apiResultaph(ApiCallResponse? value) {
    _apiResultaph = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get apiResultaph => _apiResultaph;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController()
      ..addListener(() {
        debugLogWidgetClass(this);
      });
  }

  @override
  void dispose() {
    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'email': debugSerializeParam(
            widget?.email,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EmailConfirmPopInfo',
            searchReference:
                'reference=ShcKDwoFZW1haWwSBndwZnh2eXIECAMgAVAAWgVlbWFpbA==',
            name: 'String',
            nullable: true,
          ),
          'apitoken': debugSerializeParam(
            widget?.apitoken,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EmailConfirmPopInfo',
            searchReference:
                'reference=ShoKEgoIYXBpdG9rZW4SBm44M3E5bHIECAMgAVAAWghhcGl0b2tlbg==',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        widgetStates: {
          'passwordText': debugSerializeParam(
            passwordTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EmailConfirmPopInfo',
            name: 'String',
            nullable: true,
          ),
          'pinCodeText': debugSerializeParam(
            pinCodeController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EmailConfirmPopInfo',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'apiResultaph': debugSerializeParam(
            apiResultaph,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EmailConfirmPopInfo',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=EmailConfirmPopInfo',
        searchReference:
            'reference=OhNFbWFpbENvbmZpcm1Qb3BJbmZvUABaE0VtYWlsQ29uZmlybVBvcEluZm8=',
        widgetClassName: 'EmailConfirmPopInfo',
      );
}
