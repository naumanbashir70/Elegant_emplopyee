import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'my_current_location_widget.dart' show MyCurrentLocationWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyCurrentLocationModel extends FlutterFlowModel<MyCurrentLocationWidget> {
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
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyCurrentLocation',
            searchReference:
                'reference=ShoKEgoIYXBpdG9rZW4SBnVodGxqMHIECAMgAVABWghhcGl0b2tlbg==',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=MyCurrentLocation',
        searchReference:
            'reference=OhFNeUN1cnJlbnRMb2NhdGlvblABWhFNeUN1cnJlbnRMb2NhdGlvbg==',
        widgetClassName: 'MyCurrentLocation',
      );
}
