import 'package:OMAR/Class/Book.dart';
import 'package:flutter/material.dart';

class CardBook extends StatelessWidget {
  final Book book;

  const CardBook({Key key, this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 5,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Row(
          children: <Widget>[
            Image.asset(book.image),
          ],
        ),
      ),
    );
  }
}
