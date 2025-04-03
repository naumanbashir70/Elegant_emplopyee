import '/backend/api_requests/api_calls.dart';
import '/components/t_p_clock_out_success/t_p_clock_out_success_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:pin_code_fields/pin_code_fields.dart';
import 't1_no_clock_out_time_copy_copy_widget.dart'
    show T1NoClockOutTimeCopyCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class T1NoClockOutTimeCopyCopyModel
    extends FlutterFlowModel<T1NoClockOutTimeCopyCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) {
    choiceChipsValueController?.value = val != null ? [val] : [];
    debugLogWidgetClass(this);
  }

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (ClockOutWithoutCode)] action in Button widget.
  ApiCallResponse? _noCode;
  set noCode(ApiCallResponse? value) {
    _noCode = value;
    debugLogWidgetClass(this);
  }

  ApiCallResponse? get noCode => _noCode;

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
        widgetStates: {
          'textFieldText': debugSerializeParam(
            textController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_1_NoClockOutTimeCopyCopy',
            name: 'String',
            nullable: true,
          ),
          'choiceChipsValue': debugSerializeParam(
            choiceChipsValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_1_NoClockOutTimeCopyCopy',
            name: 'String',
            nullable: true,
          ),
          'pinCodeText': debugSerializeParam(
            pinCodeController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_1_NoClockOutTimeCopyCopy',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'noCode': debugSerializeParam(
            noCode,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_1_NoClockOutTimeCopyCopy',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=T_1_NoClockOutTimeCopyCopy',
        searchReference:
            'reference=OhpUXzFfTm9DbG9ja091dFRpbWVDb3B5Q29weVAAWhpUXzFfTm9DbG9ja091dFRpbWVDb3B5Q29weQ==',
        widgetClassName: 'T_1_NoClockOutTimeCopyCopy',
      );
}
