import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class ElegantEmployeeAuthUser {
  ElegantEmployeeAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<ElegantEmployeeAuthUser> elegantEmployeeAuthUserSubject =
    BehaviorSubject.seeded(ElegantEmployeeAuthUser(loggedIn: false));
Stream<ElegantEmployeeAuthUser> elegantEmployeeAuthUserStream() =>
    elegantEmployeeAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
