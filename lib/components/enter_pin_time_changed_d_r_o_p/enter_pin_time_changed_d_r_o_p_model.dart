import '/backend/api_requests/api_calls.dart';
import '/components/invalid_pin/invalid_pin_widget.dart';
import '/components/job_dropped/job_dropped_widget.dart';
import '/components/something/something_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'enter_pin_time_changed_d_r_o_p_widget.dart'
    show EnterPinTimeChangedDROPWidget;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EnterPinTimeChangedDROPModel
    extends FlutterFlowModel<EnterPinTimeChangedDROPWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (UpdateEmpStatus)] action in Button widget.
  ApiCallResponse? _apiResult6stCopy3;
  set apiResult6stCopy3(ApiCallResponse? value) {
    _apiResult6stCopy3 = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get apiResult6stCopy3 => _apiResult6stCopy3;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController()
      ..addListener(() {
        debugLogWidgetClass(this);
      });
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'apitoken': debugSerializeParam(
            widget?.apitoken,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinTimeChangedDROP',
            searchReference:
                'reference=ShoKEgoIYXBpdG9rZW4SBnlrb2d6a3IECAMgAVAAWghhcGl0b2tlbg==',
            name: 'String',
            nullable: true,
          ),
          'keydrop': debugSerializeParam(
            widget?.keydrop,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinTimeChangedDROP',
            searchReference:
                'reference=ShkKEQoHa2V5ZHJvcBIGbWFjMjN1cgQIAyABUABaB2tleWRyb3A=',
            name: 'String',
            nullable: true,
          ),
          'intime': debugSerializeParam(
            widget?.intime,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinTimeChangedDROP',
            searchReference:
                'reference=ShgKEAoGaW50aW1lEgZhc2Iyd3dyBAgDIAFQAFoGaW50aW1l',
            name: 'String',
            nullable: true,
          ),
          'outtime': debugSerializeParam(
            widget?.outtime,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinTimeChangedDROP',
            searchReference:
                'reference=ShkKEQoHb3V0dGltZRIGcjdncjI4cgQIAyABUABaB291dHRpbWU=',
            name: 'String',
            nullable: true,
          ),
          'date': debugSerializeParam(
            widget?.date,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinTimeChangedDROP',
            searchReference:
                'reference=ShYKDgoEZGF0ZRIGbmx1MGJrcgQIAyABUABaBGRhdGU=',
            name: 'String',
            nullable: true,
          ),
          'payrate': debugSerializeParam(
            widget?.payrate,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinTimeChangedDROP',
            searchReference:
                'reference=ShkKEQoHcGF5cmF0ZRIGZjdndzNscgQIAyABUABaB3BheXJhdGU=',
            name: 'String',
            nullable: true,
          ),
          'status': debugSerializeParam(
            widget?.status,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinTimeChangedDROP',
            searchReference:
                'reference=ShgKEAoGc3RhdHVzEgZmYTU0ejFyBAgDIAFQAFoGc3RhdHVz',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        widgetStates: {
          'pinCodeText': debugSerializeParam(
            pinCodeController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinTimeChangedDROP',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'apiResult6stCopy3': debugSerializeParam(
            apiResult6stCopy3,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinTimeChangedDROP',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=EnterPinTimeChangedDROP',
        searchReference:
            'reference=OhdFbnRlclBpblRpbWVDaGFuZ2VkRFJPUFAAWhdFbnRlclBpblRpbWVDaGFuZ2VkRFJPUA==',
        widgetClassName: 'EnterPinTimeChangedDROP',
      );
}
