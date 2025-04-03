import '/backend/api_requests/api_calls.dart';
import '/components/invalid_clock_i_n/invalid_clock_i_n_widget.dart';
import '/components/t_p_r_f_b_sucess_break/t_p_r_f_b_sucess_break_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:pin_code_fields/pin_code_fields.dart';
import 't3_enter_pin_r_f_b_widget.dart' show T3EnterPinRFBWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class T3EnterPinRFBModel extends FlutterFlowModel<T3EnterPinRFBWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (BreakIn)] action in Button widget.
  ApiCallResponse? _breakIn;
  set breakIn(ApiCallResponse? value) {
    _breakIn = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get breakIn => _breakIn;

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
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_3_EnterPin_RFB',
            searchReference:
                'reference=ShoKEgoIYXBpdG9rZW4SBjFxeHBmZnIECAMgAVAAWghhcGl0b2tlbg==',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        widgetStates: {
          'pinCodeText': debugSerializeParam(
            pinCodeController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_3_EnterPin_RFB',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'breakIn': debugSerializeParam(
            breakIn,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_3_EnterPin_RFB',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=T_3_EnterPin_RFB',
        searchReference:
            'reference=OhBUXzNfRW50ZXJQaW5fUkZCUABaEFRfM19FbnRlclBpbl9SRkI=',
        widgetClassName: 'T_3_EnterPin_RFB',
      );
}
