import 'package:flutter/material.dart';

class SignUpModal extends ChangeNotifier {
  Map<String, dynamic> SignUp = {};

  updateData(Map<String, dynamic> data) {
    SignUp.addAll(data);
    notifyListeners();
  }
}
