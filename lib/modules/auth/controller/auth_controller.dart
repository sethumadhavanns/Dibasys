import 'package:flutter/foundation.dart';

class AuthController with ChangeNotifier {
  bool isChecked = false;

  toggleCheckBox() {
    isChecked = !isChecked;
    notifyListeners();
  }
}
