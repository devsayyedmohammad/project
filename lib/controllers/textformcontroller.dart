import 'package:flutter/material.dart';

class Textformcontroller extends ChangeNotifier {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  List<Map<String, String>> saveTrustedContact = [];
  void saveData() {
    saveTrustedContact
        .add({"name": controller1.text, "number": controller2.text});
    controller1.clear();
    controller2.clear();
    notifyListeners();
  }
}
