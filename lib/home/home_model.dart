import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (ClockInStatus)] action in home widget.
  ApiCallResponse? statusCheck;
  // Stores action output result for [Backend Call - API (ClockInStatus)] action in timeclock widget.
  ApiCallResponse? checkStatusBefore;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
