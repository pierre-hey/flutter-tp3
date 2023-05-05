import 'package:flutter/material.dart';

// L'User
class User {
  String? email;

  User({this.email});
}

// Mon provider pour notifier tout le monde les changements apportés sur un User
class UserProvider with ChangeNotifier {
  User user = User(email: "");

  onLogin(User newUser) {
    user = newUser;

    // je notifie tout le monde
    notifyListeners();
  }
}
