import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/t_p_r_f_b_sucess_break/t_p_r_f_b_sucess_break_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 't5_return_from_break_widget.dart' show T5ReturnFromBreakWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class T5ReturnFromBreakModel extends FlutterFlowModel<T5ReturnFromBreakWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (ClockInStatus)] action in T_5_ReturnFromBreak widget.
  ApiCallResponse? _statusOut;
  set statusOut(ApiCallResponse? value) {
    _statusOut = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get statusOut => _statusOut;

  // Stores action output result for [Backend Call - API (BreakIn)] action in Circle widget.
  ApiCallResponse? _apiResult92s;
  set apiResult92s(ApiCallResponse? value) {
    _apiResult92s = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get apiResult92s => _apiResult92s;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    debugLogWidgetClass(this);
  }

  @override
  void dispose() {}

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'apitoken': debugSerializeParam(
            widget?.apitoken,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_5_ReturnFromBreak',
            searchReference:
                'reference=ShoKEgoIYXBpdG9rZW4SBnVodGxqMHIECAMgAVABWghhcGl0b2tlbg==',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        actionOutputs: {
          'statusOut': debugSerializeParam(
            statusOut,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_5_ReturnFromBreak',
            name: 'ApiCallResponse',
            nullable: true,
          ),
          'apiResult92s': debugSerializeParam(
            apiResult92s,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_5_ReturnFromBreak',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=T_5_ReturnFromBreak',
        searchReference:
            'reference=OhNUXzVfUmV0dXJuRnJvbUJyZWFrUAFaE1RfNV9SZXR1cm5Gcm9tQnJlYWs=',
        widgetClassName: 'T_5_ReturnFromBreak',
      );
}
