import 'package:OMAR/Class/Book.dart';
import 'package:OMAR/Class/Books.dart';
import 'package:OMAR/Screens/ListViewBook/CardBook.dart';
import 'package:flutter/material.dart';

class ListViewBook extends StatefulWidget {
  @override
  _ListViewBookState createState() => _ListViewBookState();
}

class _ListViewBookState extends State<ListViewBook> {


  @override
  Widget build(BuildContext context) {
    List<Book> books = getBooks();
    return Scaffold(
      appBar: AppBar(
        title: Text('Bibliography'),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, int index) {
          return Dismissible(
            key: Key(books[index].title),
            child: CardBook(
              book: books[index],
            ),
            background: Container(
              color: Colors.red,
            ),
            onDismissed: (direction) {
              Navigator.of(context).pushNamed('/BookView');
            },
            crossAxisEndOffset: 100,
          );
        },
      ),
    );
  }
}
