import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'job_reject_widget.dart' show JobRejectWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class JobRejectModel extends FlutterFlowModel<JobRejectWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (UpdateEmpStatus)] action in Button widget.
  ApiCallResponse? _apiResult6stCopy;
  set apiResult6stCopy(ApiCallResponse? value) {
    _apiResult6stCopy = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get apiResult6stCopy => _apiResult6stCopy;

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
          'apitoken': debugSerializeParam(
            widget?.apitoken,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=JobReject',
            searchReference:
                'reference=ShoKEgoIYXBpdG9rZW4SBjZyaWg3MHIECAMgAVAAWghhcGl0b2tlbg==',
            name: 'String',
            nullable: true,
          ),
          'jobkey': debugSerializeParam(
            widget?.jobkey,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=JobReject',
            searchReference:
                'reference=ShgKEAoGam9ia2V5EgZ4a2g4anFyBAgDIAFQAFoGam9ia2V5',
            name: 'String',
            nullable: true,
          ),
          'intime': debugSerializeParam(
            widget?.intime,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=JobReject',
            searchReference:
                'reference=ShgKEAoGaW50aW1lEgYzamQ3dmpyBAgDIAFQAFoGaW50aW1l',
            name: 'String',
            nullable: true,
          ),
          'outtime': debugSerializeParam(
            widget?.outtime,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=JobReject',
            searchReference:
                'reference=ShkKEQoHb3V0dGltZRIGdHhoM283cgQIAyABUABaB291dHRpbWU=',
            name: 'String',
            nullable: true,
          ),
          'date': debugSerializeParam(
            widget?.date,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=JobReject',
            searchReference:
                'reference=ShYKDgoEZGF0ZRIGM2hkNzVlcgQIAyABUABaBGRhdGU=',
            name: 'String',
            nullable: true,
          ),
          'payrate': debugSerializeParam(
            widget?.payrate,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=JobReject',
            searchReference:
                'reference=ShkKEQoHcGF5cmF0ZRIGczJoNHZjcgQIAyABUABaB3BheXJhdGU=',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        actionOutputs: {
          'apiResult6stCopy': debugSerializeParam(
            apiResult6stCopy,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=JobReject',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=JobReject',
        searchReference: 'reference=OglKb2JSZWplY3RQAFoJSm9iUmVqZWN0',
        widgetClassName: 'JobReject',
      );
}
