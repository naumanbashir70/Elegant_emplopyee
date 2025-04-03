import '/backend/api_requests/api_calls.dart';
import '/components/ph_error/ph_error_widget.dart';
import '/components/s_num_update/s_num_update_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'enter_pin_profile_num_second_widget.dart'
    show EnterPinProfileNumSecondWidget;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EnterPinProfileNumSecondModel
    extends FlutterFlowModel<EnterPinProfileNumSecondWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (UpdatePhone)] action in Button widget.
  ApiCallResponse? _apiPhoneUpdate;
  set apiPhoneUpdate(ApiCallResponse? value) {
    _apiPhoneUpdate = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get apiPhoneUpdate => _apiPhoneUpdate;

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
          'phonenumber': debugSerializeParam(
            widget?.phonenumber,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinProfileNumSecond',
            searchReference:
                'reference=Sh0KFQoLcGhvbmVudW1iZXISBmZoM3ZqcnIECAMgAVAAWgtwaG9uZW51bWJlcg==',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        widgetStates: {
          'pinCodeText': debugSerializeParam(
            pinCodeController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinProfileNumSecond',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'apiPhoneUpdate': debugSerializeParam(
            apiPhoneUpdate,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=EnterPinProfileNumSecond',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=EnterPinProfileNumSecond',
        searchReference:
            'reference=OhhFbnRlclBpblByb2ZpbGVOdW1TZWNvbmRQAFoYRW50ZXJQaW5Qcm9maWxlTnVtU2Vjb25k',
        widgetClassName: 'EnterPinProfileNumSecond',
      );
}
