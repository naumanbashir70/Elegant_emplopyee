import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/enter_pin_call_out/enter_pin_call_out_widget.dart';
import '/components/enter_pin_reconfirm/enter_pin_reconfirm_widget.dart';
import '/components/enter_pin_simple_shift/enter_pin_simple_shift_widget.dart';
import '/components/enter_pin_time_changed_a_c_c_e_p_t/enter_pin_time_changed_a_c_c_e_p_t_widget.dart';
import '/components/enter_pin_time_changed_d_r_o_p/enter_pin_time_changed_d_r_o_p_widget.dart';
import '/components/note_detail/note_detail_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:map_launcher/map_launcher.dart' as $ml;
import 'shift_details_widget.dart' show ShiftDetailsWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShiftDetailsModel extends FlutterFlowModel<ShiftDetailsWidget> {
  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    debugLogWidgetClass(this);
  }

  @override
  void dispose() {}

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'apitoken': debugSerializeParam(
            widget?.apitoken,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=ShiftDetails',
            searchReference:
                'reference=ShoKEgoIYXBpdG9rZW4SBnVodGxqMHIECAMgAVABWghhcGl0b2tlbg==',
            name: 'String',
            nullable: true,
          ),
          'shiftkey': debugSerializeParam(
            widget?.shiftkey,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=ShiftDetails',
            searchReference:
                'reference=ShoKEgoIc2hpZnRrZXkSBjRmZDN1anIECAMgAVABWghzaGlmdGtleQ==',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=ShiftDetails',
        searchReference: 'reference=OgxTaGlmdERldGFpbHNQAVoMU2hpZnREZXRhaWxz',
        widgetClassName: 'ShiftDetails',
      );
}
