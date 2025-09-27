import 'package:flutter/widgets.dart';

class CheckInController with ChangeNotifier {
  String? selectedTaskValue;
  String? selectedPlaceValue;
  // ✅ NEW: to manage mutually exclusive checkboxes
  String selectedOption = ""; // "option1" or "option2"
  toggleSelecetdValue(bool isTask, String value) {
    if (isTask) {
      selectedTaskValue = value;
    } else {
      selectedPlaceValue = value;
    }
    notifyListeners();
  }

  // ✅ NEW: toggle checkbox selection
  void toggleOption(String option) {
    if (selectedOption == option) {
      selectedOption = ""; // unselect if same clicked again (optional)
    } else {
      selectedOption = option;
    }
    notifyListeners();
  }
}
