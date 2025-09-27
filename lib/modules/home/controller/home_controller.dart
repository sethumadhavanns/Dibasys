import 'package:flutter/widgets.dart';

class HomeController with ChangeNotifier {
  int selecetdIndex = 0;
  toggleSelecetedIndex(int index) {
    selecetdIndex = index;
    notifyListeners();
  }
}
