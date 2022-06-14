import 'package:flutter/cupertino.dart';

class Update extends ChangeNotifier {
  Future<bool> update() async {
    await Future.delayed(const Duration(seconds: 1));
    notifyListeners();
    return Future.value(true);
  }
}
