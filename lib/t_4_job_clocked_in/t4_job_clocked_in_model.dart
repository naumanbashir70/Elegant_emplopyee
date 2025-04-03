import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/t_1_enter_pin_g_t_b/t1_enter_pin_g_t_b_widget.dart';
import '/components/t_2_enter_clock_out/t2_enter_clock_out_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 't4_job_clocked_in_widget.dart' show T4JobClockedInWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class T4JobClockedInModel extends FlutterFlowModel<T4JobClockedInWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (ClockInStatus)] action in Circle widget.
  ApiCallResponse? _clockstatus;
  set clockstatus(ApiCallResponse? value) {
    _clockstatus = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get clockstatus => _clockstatus;

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
        actionOutputs: {
          'clockstatus': debugSerializeParam(
            clockstatus,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_4_Job_ClockedIn',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=T_4_Job_ClockedIn',
        searchReference:
            'reference=OhFUXzRfSm9iX0Nsb2NrZWRJblABWhFUXzRfSm9iX0Nsb2NrZWRJbg==',
        widgetClassName: 'T_4_Job_ClockedIn',
      );
}
