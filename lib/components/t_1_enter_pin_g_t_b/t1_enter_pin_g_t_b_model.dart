import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/invalid_clock_i_n/invalid_clock_i_n_widget.dart';
import '/components/t_p_sucess_break/t_p_sucess_break_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:pin_code_fields/pin_code_fields.dart';
import 't1_enter_pin_g_t_b_widget.dart' show T1EnterPinGTBWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class T1EnterPinGTBModel extends FlutterFlowModel<T1EnterPinGTBWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (BreakOut)] action in Container widget.
  ApiCallResponse? _breakOut;
  set breakOut(ApiCallResponse? value) {
    _breakOut = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get breakOut => _breakOut;

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
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'apitoken': debugSerializeParam(
            widget?.apitoken,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_1_EnterPin_GTB',
            searchReference:
                'reference=ShoKEgoIYXBpdG9rZW4SBjVxNzZvM3IECAMgAVAAWghhcGl0b2tlbg==',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        widgetStates: {
          'pinCodeText': debugSerializeParam(
            pinCodeController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_1_EnterPin_GTB',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'breakOut': debugSerializeParam(
            breakOut,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_1_EnterPin_GTB',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=T_1_EnterPin_GTB',
        searchReference:
            'reference=OhBUXzFfRW50ZXJQaW5fR1RCUABaEFRfMV9FbnRlclBpbl9HVEI=',
        widgetClassName: 'T_1_EnterPin_GTB',
      );
}
