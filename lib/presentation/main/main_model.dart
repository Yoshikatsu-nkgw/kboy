import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier {
  // ignore: non_constant_identifier_names
  String YoshiTx = 'Yoshikatsu';

  void changeYoshiTx() {
    YoshiTx = 'Y';
    notifyListeners();
  }
}
