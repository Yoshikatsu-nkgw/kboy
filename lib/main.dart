import 'package:kboy_app/book_list_page.dart';
import 'package:kboy_app/main_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('YoshikatsuのFlutterアプリ製作'),
          ),
          body: Consumer<MainModel>(builder: (context, model, child) {
            return Center(
              child: Column(
                children: [
                  Text(
                    model.YoshiTx,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  RaisedButton(
                    child: Text('画面遷移「本棚」'),
                    onPressed: () {
                      //TODO
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BookList()),
                      );
                    },
                  ),
                  RaisedButton(
                    child: Text('文字変換'),
                    onPressed: () {
                      //TODO
                      model.changeYoshiTx();
                    },
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }}
