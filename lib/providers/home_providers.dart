// /lib/providers/user_provider.dart
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  
  void updateUser(String name, int age) {
    // _user = User(name: name, age: age);
    notifyListeners(); // Notifies listeners about the change.
  }
}
