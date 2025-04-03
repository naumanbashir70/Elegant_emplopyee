import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/invalid_clock_i_n_code/invalid_clock_i_n_code_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 't2_clock_in_widget.dart' show T2ClockInWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class T2ClockInModel extends FlutterFlowModel<T2ClockInWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (ClockInStatus)] action in Circle widget.
  ApiCallResponse? _statusCheck;
  set statusCheck(ApiCallResponse? value) {
    _statusCheck = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get statusCheck => _statusCheck;

  // Stores action output result for [Backend Call - API (ClockIn)] action in Circle widget.
  ApiCallResponse? _clockein;
  set clockein(ApiCallResponse? value) {
    _clockein = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get clockein => _clockein;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController()
      ..addListener(() {
        debugLogWidgetClass(this);
      });

    debugLogWidgetClass(this);
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
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_2_ClockIn',
            searchReference:
                'reference=ShoKEgoIYXBpdG9rZW4SBnVodGxqMHIECAMgAVABWghhcGl0b2tlbg==',
            name: 'String',
            nullable: true,
          ),
          'title': debugSerializeParam(
            widget?.title,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_2_ClockIn',
            searchReference:
                'reference=ShcKDwoFdGl0bGUSBmJkZG11d3IECAMgAVABWgV0aXRsZQ==',
            name: 'String',
            nullable: true,
          ),
          'intime': debugSerializeParam(
            widget?.intime,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_2_ClockIn',
            searchReference:
                'reference=ShgKEAoGaW50aW1lEgY4ZjBwNXZyBAgDIAFQAVoGaW50aW1l',
            name: 'String',
            nullable: true,
          ),
          'jobkey': debugSerializeParam(
            widget?.jobkey,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_2_ClockIn',
            searchReference:
                'reference=ShgKEAoGam9ia2V5EgZoa2diYmdyBAgDIAFQAVoGam9ia2V5',
            name: 'String',
            nullable: true,
          ),
          'poscode': debugSerializeParam(
            widget?.poscode,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_2_ClockIn',
            searchReference:
                'reference=ShkKEQoHcG9zY29kZRIGMmE1ZG80cgQIAyABUAFaB3Bvc2NvZGU=',
            name: 'String',
            nullable: true,
          ),
          'clientname': debugSerializeParam(
            widget?.clientname,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_2_ClockIn',
            searchReference:
                'reference=ShwKFAoKY2xpZW50bmFtZRIGeWFhcDhwcgQIAyABUAFaCmNsaWVudG5hbWU=',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        widgetStates: {
          'pinCodeText': debugSerializeParam(
            pinCodeController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_2_ClockIn',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'statusCheck': debugSerializeParam(
            statusCheck,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_2_ClockIn',
            name: 'ApiCallResponse',
            nullable: true,
          ),
          'clockein': debugSerializeParam(
            clockein,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_2_ClockIn',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=T_2_ClockIn',
        searchReference: 'reference=OgtUXzJfQ2xvY2tJblABWgtUXzJfQ2xvY2tJbg==',
        widgetClassName: 'T_2_ClockIn',
      );
}
