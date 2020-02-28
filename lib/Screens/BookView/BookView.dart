import 'package:OMAR/Class/Book.dart';
import 'package:animate_do/animate_do.dart' as animate;
import 'package:flutter/material.dart';

class BookView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Book book = ModalRoute.of(context).settings.arguments;
    return animate.JelloIn(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Color.fromRGBO(211, 0, 0, 1.0),
          ),
          title: Text(
            book.title,
            overflow: TextOverflow.ellipsis,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.format_quote,
                color: Color.fromRGBO(255, 255, 38, 1.0),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text('APA'),
                    content: Text(book.apa),
                    actions: <Widget>[
                      Center(
                        child: RaisedButton(
                          child: Text('OK'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
              iconSize: 40,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  child: Hero(
                    child: Image.asset(
                      book.image,
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height / 2
                          : MediaQuery.of(context).size.height / 1.5,
                    ),
                    tag: book,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Information(
                    text: 'Autores: ',
                    value: book.autors.toString(),
                    colorAcent: book.colorAcent,
                    colorText: book.colorText,
                  ),
                  Information(
                    text: 'Editorial: ',
                    value: book.editorial,
                    colorAcent: book.colorAcent,
                    colorText: book.colorText,
                  ),
                  Information(
                    text: 'Año: ',
                    value: book.year,
                    colorAcent: book.colorAcent,
                    colorText: book.colorText,
                  ),
                  Information(
                    text: 'Edicion: ',
                    value: book.edition,
                    colorAcent: book.colorAcent,
                    colorText: book.colorText,
                  ),
                  Information(
                    text: 'Biblioteca: ',
                    value: book.library,
                    colorAcent: book.colorAcent,
                    colorText: book.colorText,
                  ),
                  Information(
                    text: 'Temas: ',
                    value: book.themes.toString(),
                    colorAcent: book.colorAcent,
                    colorText: book.colorText,
                  ),
                  Information(
                    text: 'Clave: ',
                    value: book.key,
                    colorAcent: book.colorAcent,
                    colorText: book.colorText,
                  ),
                  Information(
                    text: 'Ubicación: ',
                    value: book.location,
                    colorAcent: book.colorAcent,
                    colorText: book.colorText,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Information extends StatelessWidget {
  String text;
  String value;
  Color colorAcent;
  Color colorText;

  Information({
    Key key,
    this.colorAcent,
    this.colorText,
    this.text,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 150,
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                fontSize: 19.0,
                color: colorAcent,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                fontSize: 19.0,
                color: colorText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
