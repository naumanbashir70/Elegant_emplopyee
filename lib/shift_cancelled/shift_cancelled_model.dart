import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'shift_cancelled_widget.dart' show ShiftCancelledWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShiftCancelledModel extends FlutterFlowModel<ShiftCancelledWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (UpdateEmpStatus)] action in Reject widget.
  ApiCallResponse? _apiResult6st;
  set apiResult6st(ApiCallResponse? value) {
    _apiResult6st = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get apiResult6st => _apiResult6st;

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
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=ShiftCancelled',
            searchReference:
                'reference=ShoKEgoIYXBpdG9rZW4SBnczdW5senIECAMgAVABWghhcGl0b2tlbg==',
            name: 'String',
            nullable: true,
          ),
          'shiftkey': debugSerializeParam(
            widget?.shiftkey,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=ShiftCancelled',
            searchReference:
                'reference=ShoKEgoIc2hpZnRrZXkSBmVrMWp4d3IECAMgAVABWghzaGlmdGtleQ==',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        actionOutputs: {
          'apiResult6st': debugSerializeParam(
            apiResult6st,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=ShiftCancelled',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=ShiftCancelled',
        searchReference:
            'reference=Og5TaGlmdENhbmNlbGxlZFABWg5TaGlmdENhbmNlbGxlZA==',
        widgetClassName: 'ShiftCancelled',
      );
}
