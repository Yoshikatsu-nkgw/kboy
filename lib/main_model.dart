import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier{
  String YoshiTx = 'Yoshikatsu!!!!!';

  void changeYoshiTx(){
    YoshiTx ='YYYYYJfdsjofj';
    notifyListeners();
  }
}