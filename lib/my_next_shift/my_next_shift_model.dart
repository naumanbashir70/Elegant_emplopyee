import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/enter_pin_call_out/enter_pin_call_out_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'my_next_shift_widget.dart' show MyNextShiftWidget;
import 'package:map_launcher/map_launcher.dart' as $ml;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyNextShiftModel extends FlutterFlowModel<MyNextShiftWidget> {
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
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyNextShift',
            searchReference:
                'reference=ShoKEgoIYXBpdG9rZW4SBnVodGxqMHIECAMgAVABWghhcGl0b2tlbg==',
            name: 'String',
            nullable: true,
          ),
          'shiftkey': debugSerializeParam(
            widget?.shiftkey,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyNextShift',
            searchReference:
                'reference=ShoKEgoIc2hpZnRrZXkSBm50eHR3cHIECAMgAVABWghzaGlmdGtleQ==',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=MyNextShift',
        searchReference: 'reference=OgtNeU5leHRTaGlmdFABWgtNeU5leHRTaGlmdA==',
        widgetClassName: 'MyNextShift',
      );
}
