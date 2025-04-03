import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/auth/custom_auth/custom_auth_user_provider.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

const debugRouteLinkMap = {
  '/home':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=home',
  '/searchJob':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=searchJob',
  '/login':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=login',
  '/testing':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=testing',
  '/reset':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=reset',
  '/myFavourite':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyFavourite',
  '/nearMyHome':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=NearMyHome',
  '/myCurrentLocation':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyCurrentLocation',
  '/nearMe':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=NearMe',
  '/allJobs':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=AllJobs',
  '/jobDetails':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=JobDetails',
  '/myShifts':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyShifts',
  '/shiftDetailsReconfirm':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=ShiftDetailsReconfirm',
  '/shiftDetailsTimeChanged':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=ShiftDetailsTimeChanged',
  '/shiftDetails':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=ShiftDetails',
  '/shiftCancelled':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=ShiftCancelled',
  '/fullTimeJob':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=FullTimeJob',
  '/fullTimeJobDrop':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=FullTimeJobDrop',
  '/myNextShift':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyNextShift',
  '/myWorkHistory':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyWorkHistory',
  '/myProfile':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyProfile',
  '/myProfilePhoneNum':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyProfilePhoneNum',
  '/myProfilePhonePic':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyProfilePhonePic',
  '/myProfilePicCurrent':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyProfilePicCurrent',
  '/myProfileUpdateEmail':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyProfileUpdateEmail',
  '/otherJob':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=OtherJob',
  '/myPrefJobCond':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyPrefJobCond',
  '/jobDetailsRej':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=JobDetailsRej',
  '/rejectedJobs':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=RejectedJobs',
  '/shiftDetailsbackupMay25':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=ShiftDetailsbackupMay25',
  '/allJobTitle':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=AllJobTitle',
  '/jobDetailsTitle':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=JobDetailsTitle',
  '/myPrefLoc':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyPrefLoc',
  '/myPrefDays':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=MyPrefDays',
  '/t1SelectShift':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_1_SelectShift',
  '/t2ClockIn':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_2_ClockIn',
  '/t3JobClockIn':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_3_Job_ClockIn',
  '/t4JobClockedIn':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_4_Job_ClockedIn',
  '/t5ReturnFromBreak':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_5_ReturnFromBreak',
  '/t6ClockOut':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_6_ClockOut',
  '/t7TimeClockHelp':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_7_TimeClockHelp',
  '/t8ClockInHistory':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_8_ClockInHistory',
  '/test':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=test',
  '/t3JobClockInCopy3':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_3_Job_ClockInCopy3',
  '/t2ClockInCopy':
      'https://app.flutterflow.io/project/elegant-employee-g1luv7?tab=uiBuilder&page=T_2_ClockInCopy'
};

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  ElegantEmployeeAuthUser? initialUser;
  ElegantEmployeeAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(ElegantEmployeeAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? HomeWidget() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? HomeWidget() : LoginWidget(),
        ),
        FFRoute(
          name: HomeWidget.routeName,
          path: HomeWidget.routePath,
          builder: (context, params) => HomeWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: SearchJobWidget.routeName,
          path: SearchJobWidget.routePath,
          builder: (context, params) => SearchJobWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: LoginWidget.routeName,
          path: LoginWidget.routePath,
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: TestingWidget.routeName,
          path: TestingWidget.routePath,
          builder: (context, params) => TestingWidget(),
        ),
        FFRoute(
          name: ResetWidget.routeName,
          path: ResetWidget.routePath,
          builder: (context, params) => ResetWidget(),
        ),
        FFRoute(
          name: MyFavouriteWidget.routeName,
          path: MyFavouriteWidget.routePath,
          builder: (context, params) => MyFavouriteWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: NearMyHomeWidget.routeName,
          path: NearMyHomeWidget.routePath,
          builder: (context, params) => NearMyHomeWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MyCurrentLocationWidget.routeName,
          path: MyCurrentLocationWidget.routePath,
          builder: (context, params) => MyCurrentLocationWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: NearMeWidget.routeName,
          path: NearMeWidget.routePath,
          builder: (context, params) => NearMeWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: AllJobsWidget.routeName,
          path: AllJobsWidget.routePath,
          builder: (context, params) => AllJobsWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: JobDetailsWidget.routeName,
          path: JobDetailsWidget.routePath,
          builder: (context, params) => JobDetailsWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
            jobkey: params.getParam(
              'jobkey',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MyShiftsWidget.routeName,
          path: MyShiftsWidget.routePath,
          builder: (context, params) => MyShiftsWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ShiftDetailsReconfirmWidget.routeName,
          path: ShiftDetailsReconfirmWidget.routePath,
          builder: (context, params) => ShiftDetailsReconfirmWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ShiftDetailsTimeChangedWidget.routeName,
          path: ShiftDetailsTimeChangedWidget.routePath,
          builder: (context, params) => ShiftDetailsTimeChangedWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ShiftDetailsWidget.routeName,
          path: ShiftDetailsWidget.routePath,
          builder: (context, params) => ShiftDetailsWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
            shiftkey: params.getParam(
              'shiftkey',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ShiftCancelledWidget.routeName,
          path: ShiftCancelledWidget.routePath,
          builder: (context, params) => ShiftCancelledWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
            shiftkey: params.getParam(
              'shiftkey',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: FullTimeJobWidget.routeName,
          path: FullTimeJobWidget.routePath,
          builder: (context, params) => FullTimeJobWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: FullTimeJobDropWidget.routeName,
          path: FullTimeJobDropWidget.routePath,
          builder: (context, params) => FullTimeJobDropWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MyNextShiftWidget.routeName,
          path: MyNextShiftWidget.routePath,
          builder: (context, params) => MyNextShiftWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
            shiftkey: params.getParam(
              'shiftkey',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MyWorkHistoryWidget.routeName,
          path: MyWorkHistoryWidget.routePath,
          builder: (context, params) => MyWorkHistoryWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MyProfileWidget.routeName,
          path: MyProfileWidget.routePath,
          builder: (context, params) => MyProfileWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MyProfilePhoneNumWidget.routeName,
          path: MyProfilePhoneNumWidget.routePath,
          builder: (context, params) => MyProfilePhoneNumWidget(),
        ),
        FFRoute(
          name: MyProfilePhonePicWidget.routeName,
          path: MyProfilePhonePicWidget.routePath,
          builder: (context, params) => MyProfilePhonePicWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MyProfilePicCurrentWidget.routeName,
          path: MyProfilePicCurrentWidget.routePath,
          builder: (context, params) => MyProfilePicCurrentWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MyProfileUpdateEmailWidget.routeName,
          path: MyProfileUpdateEmailWidget.routePath,
          builder: (context, params) => MyProfileUpdateEmailWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: OtherJobWidget.routeName,
          path: OtherJobWidget.routePath,
          builder: (context, params) => OtherJobWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MyPrefJobCondWidget.routeName,
          path: MyPrefJobCondWidget.routePath,
          builder: (context, params) => MyPrefJobCondWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: JobDetailsRejWidget.routeName,
          path: JobDetailsRejWidget.routePath,
          builder: (context, params) => JobDetailsRejWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
            orderid: params.getParam(
              'orderid',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: RejectedJobsWidget.routeName,
          path: RejectedJobsWidget.routePath,
          builder: (context, params) => RejectedJobsWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ShiftDetailsbackupMay25Widget.routeName,
          path: ShiftDetailsbackupMay25Widget.routePath,
          builder: (context, params) => ShiftDetailsbackupMay25Widget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
            shiftkey: params.getParam(
              'shiftkey',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: AllJobTitleWidget.routeName,
          path: AllJobTitleWidget.routePath,
          builder: (context, params) => AllJobTitleWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
            title: params.getParam(
              'title',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: JobDetailsTitleWidget.routeName,
          path: JobDetailsTitleWidget.routePath,
          builder: (context, params) => JobDetailsTitleWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
            jobkey: params.getParam(
              'jobkey',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MyPrefLocWidget.routeName,
          path: MyPrefLocWidget.routePath,
          builder: (context, params) => MyPrefLocWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MyPrefDaysWidget.routeName,
          path: MyPrefDaysWidget.routePath,
          builder: (context, params) => MyPrefDaysWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: T1SelectShiftWidget.routeName,
          path: T1SelectShiftWidget.routePath,
          builder: (context, params) => T1SelectShiftWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: T2ClockInWidget.routeName,
          path: T2ClockInWidget.routePath,
          builder: (context, params) => T2ClockInWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
            title: params.getParam(
              'title',
              ParamType.String,
            ),
            intime: params.getParam(
              'intime',
              ParamType.String,
            ),
            jobkey: params.getParam(
              'jobkey',
              ParamType.String,
            ),
            poscode: params.getParam(
              'poscode',
              ParamType.String,
            ),
            clientname: params.getParam(
              'clientname',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: T3JobClockInWidget.routeName,
          path: T3JobClockInWidget.routePath,
          builder: (context, params) => T3JobClockInWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: T4JobClockedInWidget.routeName,
          path: T4JobClockedInWidget.routePath,
          builder: (context, params) => T4JobClockedInWidget(),
        ),
        FFRoute(
          name: T5ReturnFromBreakWidget.routeName,
          path: T5ReturnFromBreakWidget.routePath,
          builder: (context, params) => T5ReturnFromBreakWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: T6ClockOutWidget.routeName,
          path: T6ClockOutWidget.routePath,
          builder: (context, params) => T6ClockOutWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: T7TimeClockHelpWidget.routeName,
          path: T7TimeClockHelpWidget.routePath,
          builder: (context, params) => T7TimeClockHelpWidget(),
        ),
        FFRoute(
          name: T8ClockInHistoryWidget.routeName,
          path: T8ClockInHistoryWidget.routePath,
          builder: (context, params) => T8ClockInHistoryWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
            title: params.getParam(
              'title',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: TestWidget.routeName,
          path: TestWidget.routePath,
          builder: (context, params) => TestWidget(),
        ),
        FFRoute(
          name: T3JobClockInCopy3Widget.routeName,
          path: T3JobClockInCopy3Widget.routePath,
          builder: (context, params) => T3JobClockInCopy3Widget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: T2ClockInCopyWidget.routeName,
          path: T2ClockInCopyWidget.routePath,
          builder: (context, params) => T2ClockInCopyWidget(
            apitoken: params.getParam(
              'apitoken',
              ParamType.String,
            ),
            title: params.getParam(
              'title',
              ParamType.String,
            ),
            intime: params.getParam(
              'intime',
              ParamType.String,
            ),
            jobkey: params.getParam(
              'jobkey',
              ParamType.String,
            ),
            poscode: params.getParam(
              'poscode',
              ParamType.String,
            ),
            clientname: params.getParam(
              'clientname',
              ParamType.String,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Color(0xFFAD1616),
                  child: Center(
                    child: Image.asset(
                      'assets/images/logo_n.png',
                      width: 250.0,
                      height: 250.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
