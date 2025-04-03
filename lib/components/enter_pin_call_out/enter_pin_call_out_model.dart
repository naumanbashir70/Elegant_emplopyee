import '/backend/api_requests/api_calls.dart';
import '/components/errorsomething/errorsomething_widget.dart';
import '/components/invalid_pin/invalid_pin_widget.dart';
import '/components/job_dropped_shifts/job_dropped_shifts_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'enter_pin_call_out_widget.dart' show EnterPinCallOutWidget;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EnterPinCallOutModel extends FlutterFlowModel<EnterPinCallOutWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (UpdateEmpStatus)] action in Button widget.
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
          'apkitoken': debugSerializeParam(
            widget?.apkitoken,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinCallOut',
            searchReference:
                'reference=ShsKEwoJYXBraXRva2VuEgZiZmkwdDhyBAgDIAFQAFoJYXBraXRva2Vu',
            name: 'String',
            nullable: true,
          ),
          'intime': debugSerializeParam(
            widget?.intime,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinCallOut',
            searchReference:
                'reference=ShgKEAoGaW50aW1lEgZzd3Q2YjdyBAgDIAFQAFoGaW50aW1l',
            name: 'String',
            nullable: true,
          ),
          'outtime': debugSerializeParam(
            widget?.outtime,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinCallOut',
            searchReference:
                'reference=ShkKEQoHb3V0dGltZRIGODQ3emF2cgQIAyABUABaB291dHRpbWU=',
            name: 'String',
            nullable: true,
          ),
          'date': debugSerializeParam(
            widget?.date,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinCallOut',
            searchReference:
                'reference=ShYKDgoEZGF0ZRIGenlyeTNtcgQIAyABUABaBGRhdGU=',
            name: 'String',
            nullable: true,
          ),
          'payrate': debugSerializeParam(
            widget?.payrate,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinCallOut',
            searchReference:
                'reference=ShkKEQoHcGF5cmF0ZRIGY3F3dWtkcgQIAyABUABaB3BheXJhdGU=',
            name: 'String',
            nullable: true,
          ),
          'status': debugSerializeParam(
            widget?.status,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinCallOut',
            searchReference:
                'reference=ShgKEAoGc3RhdHVzEgY3Y280MjNyBAgDIAFQAFoGc3RhdHVz',
            name: 'String',
            nullable: true,
          ),
          'shiftkeys': debugSerializeParam(
            widget?.shiftkeys,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinCallOut',
            searchReference:
                'reference=ShsKEwoJc2hpZnRrZXlzEgZlNmh0NWZyBAgDIAFQAFoJc2hpZnRrZXlz',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        widgetStates: {
          'pinCodeText': debugSerializeParam(
            pinCodeController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinCallOut',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'apiResult6st': debugSerializeParam(
            apiResult6st,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinCallOut',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=EnterPinCallOut',
        searchReference:
            'reference=Og9FbnRlclBpbkNhbGxPdXRQAFoPRW50ZXJQaW5DYWxsT3V0',
        widgetClassName: 'EnterPinCallOut',
      );
}
