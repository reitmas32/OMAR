import 'package:OMAR/Class/Book.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class CardBook extends StatefulWidget {
  final Book book;

  const CardBook({Key key, this.book}) : super(key: key);

  @override
  _CardBookState createState() => _CardBookState();
}

class _CardBookState extends State<CardBook> {
  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/BookView', arguments: widget.book);
          },
          child: Container(
            height: MediaQuery.of(context).size.height / 5,
            decoration: BoxDecoration(
              color: Color.fromRGBO(206, 220, 158, 1.0),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  child: Hero(
                    child: Image.asset(widget.book.image),
                    tag: widget.book,
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.book.title,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          widget.book.autors.toString(),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.book,
                              size: 30.0,
                              color: widget.book.physical
                                  ? Colors.purple[600]
                                  : Colors.purple[200],
                            ),
                            Text(
                              '/',
                              style: TextStyle(
                                fontSize: 35.0,
                              ),
                            ),
                            Icon(
                              Icons.computer,
                              size: 30.0,
                              color: !widget.book.electronic
                                  ? Colors.purple[600]
                                  : Colors.purple[200],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
