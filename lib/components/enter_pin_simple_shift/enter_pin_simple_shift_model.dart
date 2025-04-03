import '/backend/api_requests/api_calls.dart';
import '/components/invalid_pin/invalid_pin_widget.dart';
import '/components/job_dropped/job_dropped_widget.dart';
import '/components/something/something_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'enter_pin_simple_shift_widget.dart' show EnterPinSimpleShiftWidget;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EnterPinSimpleShiftModel
    extends FlutterFlowModel<EnterPinSimpleShiftWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
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
  void initState(BuildContext context) {
    pinCodeController = TextEditingController()
      ..addListener(() {
        debugLogWidgetClass(this);
      });
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

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
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinSimpleShift',
            searchReference:
                'reference=ShoKEgoIYXBpdG9rZW4SBjEzcjhhOHIECAMgAVAAWghhcGl0b2tlbg==',
            name: 'String',
            nullable: true,
          ),
          'keydrop': debugSerializeParam(
            widget?.keydrop,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinSimpleShift',
            searchReference:
                'reference=ShkKEQoHa2V5ZHJvcBIGcjl2OXkycgQIAyABUABaB2tleWRyb3A=',
            name: 'String',
            nullable: true,
          ),
          'intime': debugSerializeParam(
            widget?.intime,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinSimpleShift',
            searchReference:
                'reference=ShgKEAoGaW50aW1lEgZqOHgwendyBAgDIAFQAFoGaW50aW1l',
            name: 'String',
            nullable: true,
          ),
          'outime': debugSerializeParam(
            widget?.outime,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinSimpleShift',
            searchReference:
                'reference=ShgKEAoGb3V0aW1lEgY3dXB1OWpyBAgDIAFQAFoGb3V0aW1l',
            name: 'String',
            nullable: true,
          ),
          'date': debugSerializeParam(
            widget?.date,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinSimpleShift',
            searchReference:
                'reference=ShYKDgoEZGF0ZRIGbGsyZmZncgQIAyABUABaBGRhdGU=',
            name: 'String',
            nullable: true,
          ),
          'payrate': debugSerializeParam(
            widget?.payrate,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinSimpleShift',
            searchReference:
                'reference=ShkKEQoHcGF5cmF0ZRIGYXExZnN5cgQIAyABUABaB3BheXJhdGU=',
            name: 'String',
            nullable: true,
          ),
          'status': debugSerializeParam(
            widget?.status,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinSimpleShift',
            searchReference:
                'reference=ShgKEAoGc3RhdHVzEgZmNTFmaXVyBAgDIAFQAFoGc3RhdHVz',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        widgetStates: {
          'textFieldText': debugSerializeParam(
            textController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinSimpleShift',
            name: 'String',
            nullable: true,
          ),
          'pinCodeText': debugSerializeParam(
            pinCodeController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinSimpleShift',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'apiResult6stCopy': debugSerializeParam(
            apiResult6stCopy,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinSimpleShift',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=EnterPinSimpleShift',
        searchReference:
            'reference=OhNFbnRlclBpblNpbXBsZVNoaWZ0UABaE0VudGVyUGluU2ltcGxlU2hpZnQ=',
        widgetClassName: 'EnterPinSimpleShift',
      );
}
