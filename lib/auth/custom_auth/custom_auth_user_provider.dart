import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class TestProjectAuthUser {
  TestProjectAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserDataModelStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<TestProjectAuthUser> testProjectAuthUserSubject =
    BehaviorSubject.seeded(TestProjectAuthUser(loggedIn: false));
Stream<TestProjectAuthUser> testProjectAuthUserStream() =>
    testProjectAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
