import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'my_pref_job_cond_widget.dart' show MyPrefJobCondWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyPrefJobCondModel extends FlutterFlowModel<MyPrefJobCondWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (UpPefJob)] action in Image widget.
  ApiCallResponse? _apiResultPrefCopy;
  set apiResultPrefCopy(ApiCallResponse? value) {
    _apiResultPrefCopy = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get apiResultPrefCopy => _apiResultPrefCopy;

  // Stores action output result for [Backend Call - API (UpPefJob)] action in Image widget.
  ApiCallResponse? _apiResulte7lCopy;
  set apiResulte7lCopy(ApiCallResponse? value) {
    _apiResulte7lCopy = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get apiResulte7lCopy => _apiResulte7lCopy;

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
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyPrefJobCond',
            searchReference:
                'reference=ShoKEgoIYXBpdG9rZW4SBnVodGxqMHIECAMgAVABWghhcGl0b2tlbg==',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        actionOutputs: {
          'apiResultPrefCopy': debugSerializeParam(
            apiResultPrefCopy,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyPrefJobCond',
            name: 'ApiCallResponse',
            nullable: true,
          ),
          'apiResulte7lCopy': debugSerializeParam(
            apiResulte7lCopy,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyPrefJobCond',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=MyPrefJobCond',
        searchReference:
            'reference=Og1NeVByZWZKb2JDb25kUAFaDU15UHJlZkpvYkNvbmQ=',
        widgetClassName: 'MyPrefJobCond',
      );
}
