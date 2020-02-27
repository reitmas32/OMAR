import 'package:OMAR/Class/Book.dart';
import 'package:animate_do/animate_do.dart' as animate;
import 'package:flutter/material.dart';

class BookView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Book book = ModalRoute.of(context).settings.arguments;
    return animate.JelloIn(
          child: Scaffold(
        body: Center(
          child: Container(
            child: Hero(
              child: Image.asset(book.image),
              tag: book,
            ),
          ),
        ),
      ),
    );
  }
}
