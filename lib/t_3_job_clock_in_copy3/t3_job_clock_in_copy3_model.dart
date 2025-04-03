import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 't3_job_clock_in_copy3_widget.dart' show T3JobClockInCopy3Widget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class T3JobClockInCopy3Model extends FlutterFlowModel<T3JobClockInCopy3Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (ClientDetailByCode)] action in PinCode widget.
  ApiCallResponse? _clientDetialbyCodeRes;
  set clientDetialbyCodeRes(ApiCallResponse? value) {
    _clientDetialbyCodeRes = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get clientDetialbyCodeRes => _clientDetialbyCodeRes;

  // State field(s) for DropDown widget.
  String? _dropDownValue;
  set dropDownValue(String? value) {
    _dropDownValue = value;
    debugLogWidgetClass(this);
  }

  String? get dropDownValue => _dropDownValue;

  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (ClockInStatus)] action in Circle widget.
  ApiCallResponse? _clockInStatus;
  set clockInStatus(ApiCallResponse? value) {
    _clockInStatus = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get clockInStatus => _clockInStatus;

  // Stores action output result for [Backend Call - API (ClockIn)] action in Circle widget.
  ApiCallResponse? _clockInShift;
  set clockInShift(ApiCallResponse? value) {
    _clockInShift = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get clockInShift => _clockInShift;

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
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_3_Job_ClockInCopy3',
            searchReference:
                'reference=ShoKEgoIYXBpdG9rZW4SBnVodGxqMHIECAMgAVABWghhcGl0b2tlbg==',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        widgetStates: {
          'pinCodeText': debugSerializeParam(
            pinCodeController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_3_Job_ClockInCopy3',
            name: 'String',
            nullable: true,
          ),
          'dropDownValue': debugSerializeParam(
            dropDownValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_3_Job_ClockInCopy3',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'clientDetialbyCodeRes': debugSerializeParam(
            clientDetialbyCodeRes,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_3_Job_ClockInCopy3',
            name: 'ApiCallResponse',
            nullable: true,
          ),
          'clockInStatus': debugSerializeParam(
            clockInStatus,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_3_Job_ClockInCopy3',
            name: 'ApiCallResponse',
            nullable: true,
          ),
          'clockInShift': debugSerializeParam(
            clockInShift,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_3_Job_ClockInCopy3',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=T_3_Job_ClockInCopy3',
        searchReference:
            'reference=OhRUXzNfSm9iX0Nsb2NrSW5Db3B5M1ABWhRUXzNfSm9iX0Nsb2NrSW5Db3B5Mw==',
        widgetClassName: 'T_3_Job_ClockInCopy3',
      );
}
