import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kboy_app/domain/book.dart';
import 'package:flutter/cupertino.dart';

class BookListModel extends ChangeNotifier {
  List<Book> books = [];

  Future fetchBooks() async {
    final docs = await FirebaseFirestore.instance.collection('books').get();
    final books = docs.docs.map((doc) => Book(doc.data()['title'])).toList();
    this.books = books;
    notifyListeners();
  }
}
