import '/backend/api_requests/api_calls.dart';
import '/components/job_dropped/job_dropped_widget.dart';
import '/components/job_dropped_shifts/job_dropped_shifts_widget.dart';
import '/components/note_detail/note_detail_widget.dart';
import '/components/reconfirm_pop/reconfirm_pop_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:map_launcher/map_launcher.dart' as $ml;
import 'shift_detailsbackup_may25_widget.dart'
    show ShiftDetailsbackupMay25Widget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShiftDetailsbackupMay25Model
    extends FlutterFlowModel<ShiftDetailsbackupMay25Widget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (UpdateEmpStatus)] action in Reject widget.
  ApiCallResponse? _apiResult6st;
  set apiResult6st(ApiCallResponse? value) {
    _apiResult6st = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get apiResult6st => _apiResult6st;

  // Stores action output result for [Backend Call - API (UpdateEmpStatus)] action in Reject widget.
  ApiCallResponse? _apiResult6stCopy4;
  set apiResult6stCopy4(ApiCallResponse? value) {
    _apiResult6stCopy4 = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get apiResult6stCopy4 => _apiResult6stCopy4;

  // Stores action output result for [Backend Call - API (UpdateEmpStatus)] action in Reject widget.
  ApiCallResponse? _apiResult6stCopy;
  set apiResult6stCopy(ApiCallResponse? value) {
    _apiResult6stCopy = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get apiResult6stCopy => _apiResult6stCopy;

  // Stores action output result for [Backend Call - API (UpdateEmpStatus)] action in Reject widget.
  ApiCallResponse? _apiResult6stCopy3;
  set apiResult6stCopy3(ApiCallResponse? value) {
    _apiResult6stCopy3 = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get apiResult6stCopy3 => _apiResult6stCopy3;

  // Stores action output result for [Backend Call - API (UpdateEmpStatus)] action in Accept widget.
  ApiCallResponse? _apiResult6stCopy2;
  set apiResult6stCopy2(ApiCallResponse? value) {
    _apiResult6stCopy2 = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get apiResult6stCopy2 => _apiResult6stCopy2;

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
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=ShiftDetailsbackupMay25',
            searchReference:
                'reference=ShoKEgoIYXBpdG9rZW4SBnVodGxqMHIECAMgAVABWghhcGl0b2tlbg==',
            name: 'String',
            nullable: true,
          ),
          'shiftkey': debugSerializeParam(
            widget?.shiftkey,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=ShiftDetailsbackupMay25',
            searchReference:
                'reference=ShoKEgoIc2hpZnRrZXkSBjRmZDN1anIECAMgAVABWghzaGlmdGtleQ==',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        actionOutputs: {
          'apiResult6st': debugSerializeParam(
            apiResult6st,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=ShiftDetailsbackupMay25',
            name: 'ApiCallResponse',
            nullable: true,
          ),
          'apiResult6stCopy4': debugSerializeParam(
            apiResult6stCopy4,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=ShiftDetailsbackupMay25',
            name: 'ApiCallResponse',
            nullable: true,
          ),
          'apiResult6stCopy': debugSerializeParam(
            apiResult6stCopy,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=ShiftDetailsbackupMay25',
            name: 'ApiCallResponse',
            nullable: true,
          ),
          'apiResult6stCopy3': debugSerializeParam(
            apiResult6stCopy3,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=ShiftDetailsbackupMay25',
            name: 'ApiCallResponse',
            nullable: true,
          ),
          'apiResult6stCopy2': debugSerializeParam(
            apiResult6stCopy2,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=ShiftDetailsbackupMay25',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=ShiftDetailsbackupMay25',
        searchReference:
            'reference=OhdTaGlmdERldGFpbHNiYWNrdXBNYXkyNVABWhdTaGlmdERldGFpbHNiYWNrdXBNYXkyNQ==',
        widgetClassName: 'ShiftDetailsbackupMay25',
      );
}
