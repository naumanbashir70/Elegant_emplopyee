import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 't_p_clock_out_success_widget.dart' show TPClockOutSuccessWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TPClockOutSuccessModel extends FlutterFlowModel<TPClockOutSuccessWidget> {
  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'location': debugSerializeParam(
            widget?.location,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_P_ClockOutSuccess',
            searchReference:
                'reference=ShoKEgoIbG9jYXRpb24SBnhxbmQ1bnIECAMgAVAAWghsb2NhdGlvbg==',
            name: 'String',
            nullable: true,
          ),
          'data': debugSerializeParam(
            widget?.data,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_P_ClockOutSuccess',
            searchReference:
                'reference=ShYKDgoEZGF0YRIGMnViNGJrcgQIAyABUABaBGRhdGE=',
            name: 'String',
            nullable: true,
          ),
          'position': debugSerializeParam(
            widget?.position,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_P_ClockOutSuccess',
            searchReference:
                'reference=ShoKEgoIcG9zaXRpb24SBjVsbHBud3IECAMgAVAAWghwb3NpdGlvbg==',
            name: 'String',
            nullable: true,
          ),
          'duration': debugSerializeParam(
            widget?.duration,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_P_ClockOutSuccess',
            searchReference:
                'reference=ShoKEgoIZHVyYXRpb24SBmpjM2JrM3IECAMgAVAAWghkdXJhdGlvbg==',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=T_P_ClockOutSuccess',
        searchReference:
            'reference=OhNUX1BfQ2xvY2tPdXRTdWNjZXNzUABaE1RfUF9DbG9ja091dFN1Y2Nlc3M=',
        widgetClassName: 'T_P_ClockOutSuccess',
      );
}
