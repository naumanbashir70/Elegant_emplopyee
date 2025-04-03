import '/backend/api_requests/api_calls.dart';
import '/components/reconfirm_pop/reconfirm_pop_widget.dart';
import '/components/something/something_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'enter_pin_reconfirm_widget.dart' show EnterPinReconfirmWidget;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EnterPinReconfirmModel extends FlutterFlowModel<EnterPinReconfirmWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (UpdateEmpStatus)] action in Button widget.
  ApiCallResponse? _apiResult6stCopy4;
  set apiResult6stCopy4(ApiCallResponse? value) {
    _apiResult6stCopy4 = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get apiResult6stCopy4 => _apiResult6stCopy4;

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
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinReconfirm',
            searchReference:
                'reference=ShoKEgoIYXBpdG9rZW4SBmRseWJ4NnIECAMgAVAAWghhcGl0b2tlbg==',
            name: 'String',
            nullable: true,
          ),
          'keyconfirm': debugSerializeParam(
            widget?.keyconfirm,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinReconfirm',
            searchReference:
                'reference=ShwKFAoKa2V5Y29uZmlybRIGaTgwOWRicgQIAyABUABaCmtleWNvbmZpcm0=',
            name: 'String',
            nullable: true,
          ),
          'intime': debugSerializeParam(
            widget?.intime,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinReconfirm',
            searchReference:
                'reference=ShgKEAoGaW50aW1lEgZydHN3eGlyBAgDIAFQAFoGaW50aW1l',
            name: 'String',
            nullable: true,
          ),
          'outime': debugSerializeParam(
            widget?.outime,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinReconfirm',
            searchReference:
                'reference=ShgKEAoGb3V0aW1lEgZta2FtenJyBAgDIAFQAFoGb3V0aW1l',
            name: 'String',
            nullable: true,
          ),
          'date': debugSerializeParam(
            widget?.date,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinReconfirm',
            searchReference:
                'reference=ShYKDgoEZGF0ZRIGZWlyaW1tcgQIAyABUABaBGRhdGU=',
            name: 'String',
            nullable: true,
          ),
          'payrate': debugSerializeParam(
            widget?.payrate,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinReconfirm',
            searchReference:
                'reference=ShkKEQoHcGF5cmF0ZRIGNjZ1aDJocgQIAyABUABaB3BheXJhdGU=',
            name: 'String',
            nullable: true,
          ),
          'status': debugSerializeParam(
            widget?.status,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinReconfirm',
            searchReference:
                'reference=ShgKEAoGc3RhdHVzEgZ0NjM2aXRyBAgDIAFQAFoGc3RhdHVz',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        widgetStates: {
          'pinCodeText': debugSerializeParam(
            pinCodeController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinReconfirm',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'apiResult6stCopy4': debugSerializeParam(
            apiResult6stCopy4,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinReconfirm',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=EnterPinReconfirm',
        searchReference:
            'reference=OhFFbnRlclBpblJlY29uZmlybVAAWhFFbnRlclBpblJlY29uZmlybQ==',
        widgetClassName: 'EnterPinReconfirm',
      );
}
