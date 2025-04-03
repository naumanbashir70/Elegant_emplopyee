import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_shifts_model.dart';
export 'my_shifts_model.dart';

class MyShiftsWidget extends StatefulWidget {
  const MyShiftsWidget({
    super.key,
    required this.apitoken,
  });

  final String? apitoken;

  static String routeName = 'MyShifts';
  static String routePath = '/myShifts';

  @override
  State<MyShiftsWidget> createState() => _MyShiftsWidgetState();
}

class _MyShiftsWidgetState extends State<MyShiftsWidget>
    with TickerProviderStateMixin, RouteAware {
  late MyShiftsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyShiftsModel());

    animationsMap.addAll({
      'listViewOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
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
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF10283D),
      appBar: AppBar(
        backgroundColor: Color(0xFF59708C),
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
              context.pushNamed(
                HomeWidget.routeName,
                queryParameters: {
                  'apitoken': serializeParam(
                    FFAppState().tokenapi,
                    ParamType.String,
                  ),
                }.withoutNulls,
              );
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
            colors: [Color(0xFF59708C), Color(0xFF111111), Colors.black],
            stops: [0.0, 0.9, 1.0],
            begin: AlignmentDirectional(0.0, -1.0),
            end: AlignmentDirectional(0, 1.0),
          ),
          shape: BoxShape.rectangle,
        ),
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Container(
                            width: 320.0,
                            height: 51.0,
                            decoration: BoxDecoration(
                              color: Color(0x00FFFFFF),
                              border: Border.all(
                                color: Color(0x00FFFFFF),
                              ),
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    'My Shift',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 35.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 0.0),
                    child: FutureBuilder<ApiCallResponse>(
                      future: DashboardDataCall.call(
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
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 50.0,
                              ),
                            ),
                          );
                        }
                        final oldDashboardDataResponse = snapshot.data!;
                        _model.debugBackendQueries[
                                'DashboardDataCall_statusCode_ListView_9x9pii5l'] =
                            debugSerializeParam(
                          oldDashboardDataResponse.statusCode,
                          ParamType.int,
                          link:
                              'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyShifts',
                          name: 'int',
                          nullable: false,
                        );
                        _model.debugBackendQueries[
                                'DashboardDataCall_responseBody_ListView_9x9pii5l'] =
                            debugSerializeParam(
                          oldDashboardDataResponse.bodyText,
                          ParamType.String,
                          link:
                              'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyShifts',
                          name: 'String',
                          nullable: false,
                        );
                        debugLogWidgetClass(_model);

                        return Builder(
                          builder: (context) {
                            final varMyjob = getJsonField(
                              oldDashboardDataResponse.jsonBody,
                              r'''$.myJob''',
                            ).toList();
                            _model.debugGeneratorVariables[
                                    'varMyjob${varMyjob.length > 100 ? ' (first 100)' : ''}'] =
                                debugSerializeParam(
                              varMyjob.take(100),
                              ParamType.JSON,
                              isList: true,
                              link:
                                  'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyShifts',
                              name: 'dynamic',
                              nullable: false,
                            );
                            debugLogWidgetClass(_model);

                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: varMyjob.length,
                              separatorBuilder: (_, __) =>
                                  SizedBox(height: 20.0),
                              itemBuilder: (context, varMyjobIndex) {
                                final varMyjobItem = varMyjob[varMyjobIndex];
                                return Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (getJsonField(
                                            varMyjobItem,
                                            r'''$.canceled''',
                                          ) ==
                                          getJsonField(
                                            varMyjobItem,
                                            r'''$.canceled_check''',
                                          )) {
                                        context.pushNamed(
                                          ShiftCancelledWidget.routeName,
                                          queryParameters: {
                                            'apitoken': serializeParam(
                                              widget!.apitoken,
                                              ParamType.String,
                                            ),
                                            'shiftkey': serializeParam(
                                              getJsonField(
                                                varMyjobItem,
                                                r'''$.key''',
                                              ).toString(),
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      } else if ((getJsonField(
                                                varMyjobItem,
                                                r'''$.next_shift''',
                                              ) ==
                                              getJsonField(
                                                varMyjobItem,
                                                r'''$.next_shift_check''',
                                              )) &&
                                          (getJsonField(
                                                varMyjobItem,
                                                r'''$.green''',
                                              ) ==
                                              getJsonField(
                                                varMyjobItem,
                                                r'''$.green_check''',
                                              ))) {
                                        context.pushNamed(
                                          MyNextShiftWidget.routeName,
                                          queryParameters: {
                                            'apitoken': serializeParam(
                                              widget!.apitoken,
                                              ParamType.String,
                                            ),
                                            'shiftkey': serializeParam(
                                              getJsonField(
                                                varMyjobItem,
                                                r'''$.key''',
                                              ).toString(),
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      } else {
                                        context.pushNamed(
                                          ShiftDetailsWidget.routeName,
                                          queryParameters: {
                                            'apitoken': serializeParam(
                                              widget!.apitoken,
                                              ParamType.String,
                                            ),
                                            'shiftkey': serializeParam(
                                              getJsonField(
                                                varMyjobItem,
                                                r'''$.key''',
                                              ).toString(),
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      }
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: (getJsonField(
                                                    varMyjobItem,
                                                    r'''$.time_to_reconfirm_check''',
                                                  ) ==
                                                  getJsonField(
                                                    varMyjobItem,
                                                    r'''$.time_to_reconfirm''',
                                                  )) ||
                                              (getJsonField(
                                                    varMyjobItem,
                                                    r'''$.canceled_check''',
                                                  ) ==
                                                  getJsonField(
                                                    varMyjobItem,
                                                    r'''$.canceled''',
                                                  )) ||
                                              (getJsonField(
                                                    varMyjobItem,
                                                    r'''$.time_change_check''',
                                                  ) ==
                                                  getJsonField(
                                                    varMyjobItem,
                                                    r'''$.time_change''',
                                                  ))
                                          ? 160.0
                                          : 110.0,
                                      decoration: BoxDecoration(
                                        color: getJsonField(
                                                  varMyjobItem,
                                                  r'''$.time_to_reconfirm''',
                                                ) !=
                                                getJsonField(
                                                  varMyjobItem,
                                                  r'''$.time_to_reconfirm_check''',
                                                )
                                            ? Color(0xFFFFF2CB)
                                            : FlutterFlowTheme.of(context)
                                                .primaryText,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x33000000),
                                            offset: Offset(
                                              0.0,
                                              2.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: getJsonField(
                                                    varMyjobItem,
                                                    r'''$.next_shift_check''',
                                                  ) ==
                                                  getJsonField(
                                                    varMyjobItem,
                                                    r'''$.next_shift''',
                                                  )
                                              ? FlutterFlowTheme.of(context)
                                                  .primaryText
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          width: 4.0,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Flexible(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 5.0, 10.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    getJsonField(
                                                      varMyjobItem,
                                                      r'''$.date''',
                                                    ).toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFFD84528),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                  Text(
                                                    getJsonField(
                                                      varMyjobItem,
                                                      r'''$.title''',
                                                    ).toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF363636),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 14.0, 10.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      getJsonField(
                                                        varMyjobItem,
                                                        r'''$.client_name''',
                                                      ).toString(),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Color(
                                                                0xFF363636),
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                    Text(
                                                      getJsonField(
                                                        varMyjobItem,
                                                        r'''$.payment_rate''',
                                                      ).toString(),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Color(
                                                                0xFF363636),
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                getJsonField(
                                                  varMyjobItem,
                                                  r'''$.client_city''',
                                                ).toString(),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF363636),
                                                          fontSize: 12.0,
                                                          letterSpacing: 1.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              if (getJsonField(
                                                    varMyjobItem,
                                                    r'''$.canceled''',
                                                  ) ==
                                                  getJsonField(
                                                    varMyjobItem,
                                                    r'''$.canceled_check''',
                                                  ))
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Container(
                                                    width: 250.0,
                                                    height: 40.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFC00000),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                20.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                10.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                20.0),
                                                        topRight:
                                                            Radius.circular(
                                                                0.0),
                                                      ),
                                                    ),
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'JOB CANCELLED',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.white,
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              if ((getJsonField(
                                                        varMyjobItem,
                                                        r'''$.time_to_reconfirm''',
                                                      ) ==
                                                      getJsonField(
                                                        varMyjobItem,
                                                        r'''$.time_to_reconfirm_check''',
                                                      )) &&
                                                  (getJsonField(
                                                        varMyjobItem,
                                                        r'''$.canceled''',
                                                      ) !=
                                                      getJsonField(
                                                        varMyjobItem,
                                                        r'''$.canceled_check''',
                                                      )) &&
                                                  (getJsonField(
                                                        varMyjobItem,
                                                        r'''$.time_change''',
                                                      ) !=
                                                      getJsonField(
                                                        varMyjobItem,
                                                        r'''$.time_change_check''',
                                                      )))
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Container(
                                                    width: 250.0,
                                                    height: 40.0,
                                                    decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                20.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                10.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                20.0),
                                                        topRight:
                                                            Radius.circular(
                                                                0.0),
                                                      ),
                                                    ),
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'RE-CONFIRM THIS JOB',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Color(
                                                                0xFFF7FF00),
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              if ((getJsonField(
                                                        varMyjobItem,
                                                        r'''$.time_change''',
                                                      ) ==
                                                      getJsonField(
                                                        varMyjobItem,
                                                        r'''$.time_change_check''',
                                                      )) &&
                                                  (getJsonField(
                                                        varMyjobItem,
                                                        r'''$.canceled''',
                                                      ) !=
                                                      getJsonField(
                                                        varMyjobItem,
                                                        r'''$.canceled_check''',
                                                      )))
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Container(
                                                    width: 250.0,
                                                    height: 40.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFC65911),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                20.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                20.0),
                                                        topRight:
                                                            Radius.circular(
                                                                0.0),
                                                      ),
                                                    ),
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'TIME CHANGED',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.white,
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ).animateOnPageLoad(
                                animationsMap['listViewOnPageLoadAnimation']!);
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
