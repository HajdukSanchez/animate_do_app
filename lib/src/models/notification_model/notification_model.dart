import 'package:flutter/material.dart';

class NotificationModel extends ChangeNotifier {
  int _numberOfNotifications = 0;
  late AnimationController bounceController;

  int get numberOfNotifications => _numberOfNotifications;

  set numberOfNotifications(int value) {
    _numberOfNotifications = value;
    notifyListeners();
  }
}
