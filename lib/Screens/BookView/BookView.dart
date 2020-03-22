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
          iconTheme: IconThemeData(
            color: Color.fromRGBO(211, 0, 0, 1.0),
          ),
          centerTitle: true,
          title: Text(
            book.title,
            overflow: TextOverflow.ellipsis,
          ),
          actions: <Widget>[
            IconButton(
              tooltip: "Cita APA",
              icon: Icon(
                Icons.format_quote,
                color: Color.fromRGBO(255, 255, 38, 1.0),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                    child: AlertDialog(
                      title: Text('APA'),
                      content: SelectableText(
                        book.apa,
                        toolbarOptions: ToolbarOptions(copy: true),
                      ),
                      actions: <Widget>[
                        RaisedButton(
                          shape: StadiumBorder(
                            side: BorderSide(style: BorderStyle.none),
                          ),
                          child: Text('OK'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
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
                    child: Image.network(
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
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          child: Text(
            text + value,
            style: TextStyle(
              fontSize: 19.0,
              color: colorAcent,
            ),
          ),
        ),
      ),
    );
  }
}
