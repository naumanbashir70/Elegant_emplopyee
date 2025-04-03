import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/job_accept_pop/job_accept_pop_widget.dart';
import '/components/job_reject/job_reject_widget.dart';
import '/components/note_detail/note_detail_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'dart:ui';
import '/index.dart';
import 'job_details_title_widget.dart' show JobDetailsTitleWidget;
import 'package:map_launcher/map_launcher.dart' as $ml;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class JobDetailsTitleModel extends FlutterFlowModel<JobDetailsTitleWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (UpdateEmpStatus)] action in Accept widget.
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
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=JobDetailsTitle',
            searchReference:
                'reference=ShoKEgoIYXBpdG9rZW4SBmcwcDA2MHIECAMgAVABWghhcGl0b2tlbg==',
            name: 'String',
            nullable: true,
          ),
          'jobkey': debugSerializeParam(
            widget?.jobkey,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=JobDetailsTitle',
            searchReference:
                'reference=ShgKEAoGam9ia2V5EgY1Z3cwc3ByBAgDIAFQAVoGam9ia2V5',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        actionOutputs: {
          'apiResult6st': debugSerializeParam(
            apiResult6st,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=JobDetailsTitle',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=JobDetailsTitle',
        searchReference:
            'reference=Og9Kb2JEZXRhaWxzVGl0bGVQAVoPSm9iRGV0YWlsc1RpdGxl',
        widgetClassName: 'JobDetailsTitle',
      );
}
