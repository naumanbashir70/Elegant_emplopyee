import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (ClockInStatus)] action in home widget.
  ApiCallResponse? _statusCheck;
  set statusCheck(ApiCallResponse? value) {
    _statusCheck = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get statusCheck => _statusCheck;

  // Stores action output result for [Backend Call - API (ClockInStatus)] action in timeclock widget.
  ApiCallResponse? _checkStatusBefore;
  set checkStatusBefore(ApiCallResponse? value) {
    _checkStatusBefore = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get checkStatusBefore => _checkStatusBefore;

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
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=home',
            searchReference:
                'reference=SiUKEgoIYXBpdG9rZW4SBnVodGxqMCoJEgdkZWZhdWx0cgQIAyABUAFaCGFwaXRva2Vu',
            name: 'String',
            nullable: false,
          )
        }.withoutNulls,
        actionOutputs: {
          'statusCheck': debugSerializeParam(
            statusCheck,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=home',
            name: 'ApiCallResponse',
            nullable: true,
          ),
          'checkStatusBefore': debugSerializeParam(
            checkStatusBefore,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=home',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=home',
        searchReference: 'reference=OgRob21lUAFaBGhvbWU=',
        widgetClassName: 'home',
      );
}
