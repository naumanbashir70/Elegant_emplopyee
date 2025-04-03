import '/backend/api_requests/api_calls.dart';
import '/components/invalid_pin/invalid_pin_widget.dart';
import '/components/something/something_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'enter_pin_time_changed_a_c_c_e_p_t_widget.dart'
    show EnterPinTimeChangedACCEPTWidget;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EnterPinTimeChangedACCEPTModel
    extends FlutterFlowModel<EnterPinTimeChangedACCEPTWidget> {
  ///  State fields for stateful widgets in this component.

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
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinTimeChangedACCEPT',
            searchReference:
                'reference=ShoKEgoIYXBpdG9rZW4SBnJuZzljbXIECAMgAVAAWghhcGl0b2tlbg==',
            name: 'String',
            nullable: true,
          ),
          'keytimec': debugSerializeParam(
            widget?.keytimec,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinTimeChangedACCEPT',
            searchReference:
                'reference=ShoKEgoIa2V5dGltZWMSBjhybXV4anIECAMgAVAAWghrZXl0aW1lYw==',
            name: 'String',
            nullable: true,
          ),
          'intime': debugSerializeParam(
            widget?.intime,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinTimeChangedACCEPT',
            searchReference:
                'reference=ShgKEAoGaW50aW1lEgZ6OGJpZHVyBAgDIAFQAFoGaW50aW1l',
            name: 'String',
            nullable: true,
          ),
          'outtime': debugSerializeParam(
            widget?.outtime,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinTimeChangedACCEPT',
            searchReference:
                'reference=ShkKEQoHb3V0dGltZRIGbTF2cnMycgQIAyABUABaB291dHRpbWU=',
            name: 'String',
            nullable: true,
          ),
          'date': debugSerializeParam(
            widget?.date,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinTimeChangedACCEPT',
            searchReference:
                'reference=ShYKDgoEZGF0ZRIGNzkzZ3lycgQIAyABUABaBGRhdGU=',
            name: 'String',
            nullable: true,
          ),
          'payrate': debugSerializeParam(
            widget?.payrate,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinTimeChangedACCEPT',
            searchReference:
                'reference=ShkKEQoHcGF5cmF0ZRIGc29xZm9vcgQIAyABUABaB3BheXJhdGU=',
            name: 'String',
            nullable: true,
          ),
          'status': debugSerializeParam(
            widget?.status,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinTimeChangedACCEPT',
            searchReference:
                'reference=ShgKEAoGc3RhdHVzEgY4dm5tbXByBAgDIAFQAFoGc3RhdHVz',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        widgetStates: {
          'pinCodeText': debugSerializeParam(
            pinCodeController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinTimeChangedACCEPT',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'apiResult6stCopy': debugSerializeParam(
            apiResult6stCopy,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinTimeChangedACCEPT',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=EnterPinTimeChangedACCEPT',
        searchReference:
            'reference=OhlFbnRlclBpblRpbWVDaGFuZ2VkQUNDRVBUUABaGUVudGVyUGluVGltZUNoYW5nZWRBQ0NFUFQ=',
        widgetClassName: 'EnterPinTimeChangedACCEPT',
      );
}
