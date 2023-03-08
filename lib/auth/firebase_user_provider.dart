import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class R32appOkFirebaseUser {
  R32appOkFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

R32appOkFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<R32appOkFirebaseUser> r32appOkFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<R32appOkFirebaseUser>(
      (user) {
        currentUser = R32appOkFirebaseUser(user);
        return currentUser!;
      },
    );
