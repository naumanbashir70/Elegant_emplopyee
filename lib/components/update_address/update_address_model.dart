import '/backend/api_requests/api_calls.dart';
import '/components/address_confirm/address_confirm_widget.dart';
import '/components/something/something_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'update_address_widget.dart' show UpdateAddressWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdateAddressModel extends FlutterFlowModel<UpdateAddressWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for streetnma widget.
  FocusNode? streetnmaFocusNode;
  TextEditingController? streetnmaTextController;
  String? Function(BuildContext, String?)? streetnmaTextControllerValidator;
  // State field(s) for Apt widget.
  FocusNode? aptFocusNode;
  TextEditingController? aptTextController;
  String? Function(BuildContext, String?)? aptTextControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode1;
  TextEditingController? cityTextController1;
  String? Function(BuildContext, String?)? cityTextController1Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode2;
  TextEditingController? cityTextController2;
  String? Function(BuildContext, String?)? cityTextController2Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode3;
  TextEditingController? cityTextController3;
  String? Function(BuildContext, String?)? cityTextController3Validator;
  // Stores action output result for [Backend Call - API (UpdateAddress)] action in Button widget.
  ApiCallResponse? _apiResultxku;
  set apiResultxku(ApiCallResponse? value) {
    _apiResultxku = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get apiResultxku => _apiResultxku;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    streetnmaFocusNode?.dispose();
    streetnmaTextController?.dispose();

    aptFocusNode?.dispose();
    aptTextController?.dispose();

    cityFocusNode1?.dispose();
    cityTextController1?.dispose();

    cityFocusNode2?.dispose();
    cityTextController2?.dispose();

    cityFocusNode3?.dispose();
    cityTextController3?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'apitoken': debugSerializeParam(
            widget?.apitoken,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=UpdateAddress',
            searchReference:
                'reference=ShoKEgoIYXBpdG9rZW4SBjQycWVwZ3IECAMgAVAAWghhcGl0b2tlbg==',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        widgetStates: {
          'streetnmaText': debugSerializeParam(
            streetnmaTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=UpdateAddress',
            name: 'String',
            nullable: true,
          ),
          'aptText': debugSerializeParam(
            aptTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=UpdateAddress',
            name: 'String',
            nullable: true,
          ),
          'cityText1': debugSerializeParam(
            cityTextController1?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=UpdateAddress',
            name: 'String',
            nullable: true,
          ),
          'cityText2': debugSerializeParam(
            cityTextController2?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=UpdateAddress',
            name: 'String',
            nullable: true,
          ),
          'cityText3': debugSerializeParam(
            cityTextController3?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=UpdateAddress',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'apiResultxku': debugSerializeParam(
            apiResultxku,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=UpdateAddress',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=UpdateAddress',
        searchReference:
            'reference=Og1VcGRhdGVBZGRyZXNzUABaDVVwZGF0ZUFkZHJlc3M=',
        widgetClassName: 'UpdateAddress',
      );
}
