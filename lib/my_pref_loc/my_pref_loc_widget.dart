import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_pref_loc_model.dart';
export 'my_pref_loc_model.dart';

class MyPrefLocWidget extends StatefulWidget {
  const MyPrefLocWidget({
    super.key,
    required this.apitoken,
  });

  final String? apitoken;

  static String routeName = 'MyPrefLoc';
  static String routePath = '/myPrefLoc';

  @override
  State<MyPrefLocWidget> createState() => _MyPrefLocWidgetState();
}

class _MyPrefLocWidgetState extends State<MyPrefLocWidget> with RouteAware {
  late MyPrefLocModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyPrefLocModel());
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);

    _model.dispose();

    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final route = DebugModalRoute.of(context);
    if (route != null) {
      routeObserver.subscribe(this, route);
    }
    debugLogGlobalProperty(context);
  }

  @override
  void didPopNext() {
    if (mounted && DebugFlutterFlowModelContext.maybeOf(context) == null) {
      setState(() => _model.isRouteVisible = true);
      debugLogWidgetClass(_model);
    }
  }

  @override
  void didPush() {
    if (mounted && DebugFlutterFlowModelContext.maybeOf(context) == null) {
      setState(() => _model.isRouteVisible = true);
      debugLogWidgetClass(_model);
    }
  }

  @override
  void didPop() {
    _model.isRouteVisible = false;
  }

  @override
  void didPushNext() {
    _model.isRouteVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    DebugFlutterFlowModelContext.maybeOf(context)
        ?.parentModelCallback
        ?.call(_model);

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFDEAE5B),
      appBar: AppBar(
        backgroundColor: Color(0xFF9A7E5D),
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
          child: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
            child: FlutterFlowIconButton(
              borderColor: Color(0x004B39EF),
              borderRadius: 0.0,
              borderWidth: 0.0,
              buttonSize: 40.0,
              fillColor: Color(0x004B39EF),
              icon: Icon(
                Icons.home,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
              onPressed: () async {
                context.pushNamed(
                  HomeWidget.routeName,
                  queryParameters: {
                    'apitoken': serializeParam(
                      widget!.apitoken,
                      ParamType.String,
                    ),
                  }.withoutNulls,
                );
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF9A7E5D), Color(0xFF6E4C22)],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(0.0, -1.0),
            end: AlignmentDirectional(0, 1.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Preferred Locations',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            fontSize: 35.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 5.0),
                child: FutureBuilder<ApiCallResponse>(
                  future: PreLocCall.call(
                    apiToken: currentAuthenticationToken,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: SpinKitCubeGrid(
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 50.0,
                          ),
                        ),
                      );
                    }
                    final listViewPreLocResponse = snapshot.data!;
                    _model.debugBackendQueries[
                            'PreLocCall_statusCode_ListView_z6bpkir1'] =
                        debugSerializeParam(
                      listViewPreLocResponse.statusCode,
                      ParamType.int,
                      link:
                          'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyPrefLoc',
                      name: 'int',
                      nullable: false,
                    );
                    _model.debugBackendQueries[
                            'PreLocCall_responseBody_ListView_z6bpkir1'] =
                        debugSerializeParam(
                      listViewPreLocResponse.bodyText,
                      ParamType.String,
                      link:
                          'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyPrefLoc',
                      name: 'String',
                      nullable: false,
                    );
                    debugLogWidgetClass(_model);

                    return Builder(
                      builder: (context) {
                        final varClients = getJsonField(
                          listViewPreLocResponse.jsonBody,
                          r'''$.clients''',
                        ).toList();
                        _model.debugGeneratorVariables[
                                'varClients${varClients.length > 100 ? ' (first 100)' : ''}'] =
                            debugSerializeParam(
                          varClients.take(100),
                          ParamType.JSON,
                          isList: true,
                          link:
                              'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyPrefLoc',
                          name: 'dynamic',
                          nullable: false,
                        );
                        debugLogWidgetClass(_model);

                        return ListView.separated(
                          padding: EdgeInsets.zero,
                          primary: false,
                          scrollDirection: Axis.vertical,
                          itemCount: varClients.length,
                          separatorBuilder: (_, __) => SizedBox(height: 15.0),
                          itemBuilder: (context, varClientsIndex) {
                            final varClientsItem = varClients[varClientsIndex];
                            return Material(
                              color: Colors.transparent,
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Container(
                                width: 50.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15.0),
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            getJsonField(
                                              varClientsItem,
                                              r'''$.name''',
                                            ).toString().maybeHandleOverflow(
                                                  maxChars: 20,
                                                  replacement: '…',
                                                ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF303030),
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ),
                                      if (getJsonField(
                                            varClientsItem,
                                            r'''$.preferred''',
                                          ) ==
                                          getJsonField(
                                            varClientsItem,
                                            r'''$.status''',
                                          ))
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 20.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                _model.apiResultPrefCopy =
                                                    await UpPrefLocCall.call(
                                                  apiToken:
                                                      currentAuthenticationToken,
                                                  clientId: getJsonField(
                                                    varClientsItem,
                                                    r'''$.id''',
                                                  ).toString(),
                                                );

                                                if (listViewPreLocResponse
                                                    .succeeded) {}

                                                safeSetState(() {});
                                              },
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/heart_golden.png',
                                                  width: 60.0,
                                                  height: 50.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                            varClientsItem,
                                            r'''$.preferred''',
                                          ) !=
                                          getJsonField(
                                            varClientsItem,
                                            r'''$.status''',
                                          ))
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 20.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                _model.apiResulte7lCopy =
                                                    await UpPrefLocCall.call(
                                                  apiToken:
                                                      currentAuthenticationToken,
                                                  clientId: getJsonField(
                                                    varClientsItem,
                                                    r'''$.id''',
                                                  ).toString(),
                                                );

                                                if (listViewPreLocResponse
                                                    .succeeded) {}

                                                safeSetState(() {});
                                              },
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: SvgPicture.asset(
                                                  'assets/images/love.svg',
                                                  width: 60.0,
                                                  height: 50.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
