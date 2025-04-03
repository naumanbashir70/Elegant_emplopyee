import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'my_pref_days_widget.dart' show MyPrefDaysWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyPrefDaysModel extends FlutterFlowModel<MyPrefDaysWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (UpPrefDay)] action in Image widget.
  ApiCallResponse? _apiResult1b4;
  set apiResult1b4(ApiCallResponse? value) {
    _apiResult1b4 = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get apiResult1b4 => _apiResult1b4;

  // Stores action output result for [Backend Call - API (UpPrefDay)] action in Image widget.
  ApiCallResponse? _upd;
  set upd(ApiCallResponse? value) {
    _upd = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get upd => _upd;

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
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyPrefDays',
            searchReference:
                'reference=ShoKEgoIYXBpdG9rZW4SBnVodGxqMHIECAMgAVABWghhcGl0b2tlbg==',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        actionOutputs: {
          'apiResult1b4': debugSerializeParam(
            apiResult1b4,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyPrefDays',
            name: 'ApiCallResponse',
            nullable: true,
          ),
          'upd': debugSerializeParam(
            upd,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyPrefDays',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=MyPrefDays',
        searchReference: 'reference=OgpNeVByZWZEYXlzUAFaCk15UHJlZkRheXM=',
        widgetClassName: 'MyPrefDays',
      );
}
