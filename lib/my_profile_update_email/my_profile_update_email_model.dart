import '/auth/custom_auth/auth_util.dart';
import '/components/email_confirm_pop_info/email_confirm_pop_info_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'my_profile_update_email_widget.dart' show MyProfileUpdateEmailWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyProfileUpdateEmailModel
    extends FlutterFlowModel<MyProfileUpdateEmailWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailupdate widget.
  FocusNode? emailupdateFocusNode;
  TextEditingController? emailupdateTextController;
  String? Function(BuildContext, String?)? emailupdateTextControllerValidator;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    debugLogWidgetClass(this);
  }

  @override
  void dispose() {
    emailupdateFocusNode?.dispose();
    emailupdateTextController?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'apitoken': debugSerializeParam(
            widget?.apitoken,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyProfileUpdateEmail',
            searchReference:
                'reference=ShoKEgoIYXBpdG9rZW4SBnVodGxqMHIECAMgAVABWghhcGl0b2tlbg==',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        widgetStates: {
          'emailupdateText': debugSerializeParam(
            emailupdateTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyProfileUpdateEmail',
            name: 'String',
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
            'https://app.flutterflow.io/project/elegant-employee-g1luv7/tab=uiBuilder&page=MyProfileUpdateEmail',
        searchReference:
            'reference=OhRNeVByb2ZpbGVVcGRhdGVFbWFpbFABWhRNeVByb2ZpbGVVcGRhdGVFbWFpbA==',
        widgetClassName: 'MyProfileUpdateEmail',
      );
}
