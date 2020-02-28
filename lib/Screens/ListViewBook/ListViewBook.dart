import 'package:OMAR/Class/Book.dart';
import 'package:OMAR/Class/Books.dart';
import 'package:OMAR/Screens/ListViewBook/CardBook.dart';
import 'package:flutter/material.dart';

class ListViewBook extends StatefulWidget {
  ListViewBook({Key key}) : super(key: key);

  @override
  _ListViewBookState createState() => _ListViewBookState();
}

class _ListViewBookState extends State<ListViewBook> {
  @override
  Widget build(BuildContext context) {
    List<Book> books = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      drawer: Opacity(
        opacity: 0.75,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).orientation == Orientation.portrait
              ? MediaQuery.of(context).size.width / 1.3
              : MediaQuery.of(context).size.width / 2.2,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
          ),
          child: DrawerHeader(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/icon.png',
                      width: MediaQuery.of(context).size.height / 4,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  Center(
                    child: Text(
                      'Estructuras Discretas',
                      style: TextStyle(fontSize: 30.0),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      onTap: () {
                        print(MediaQuery.of(context).orientation);
                        Navigator.of(context).pop();
                        Navigator.of(context).pushNamed(
                          '/ListViewBook',
                          arguments: getBooks(),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              5.0,
                            ),
                          ),
                        ),
                        child: Text(
                          'Todos los Temas',
                          style: TextStyle(
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Wrap(
                    alignment: WrapAlignment.spaceAround,
                    children: <Widget>[
                      ButtonThemes(
                        text: 'Tema 1',
                        theme: '1',
                      ),
                      ButtonThemes(
                        text: 'Tema 2',
                        theme: '2',
                      ),
                      ButtonThemes(
                        text: 'Tema 3',
                        theme: '3',
                      ),
                      ButtonThemes(
                        text: 'Tema 4',
                        theme: '4',
                      ),
                      ButtonThemes(
                        text: 'Tema 5',
                        theme: '5',
                      ),
                    ],
                  ),
                  Text('Consulta nuestro PDF'),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text('A qui va el link del PDF xd'),
                ],
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        iconTheme: IconThemeData(
          color: Color.fromRGBO(211, 0, 0, 1.0),
        ),
        title: Text('Bibliography'),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, int index) {
          return CardBook(
            book: books[index],
          );
        },
      ),
    );
  }
}

class ButtonThemes extends StatelessWidget {
  final String theme;
  final String text;

  const ButtonThemes({
    Key key,
    this.theme,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: () {
          print(MediaQuery.of(context).orientation);
          Navigator.of(context).pop();
          Navigator.of(context).pushNamed(
            '/ListViewBook',
            arguments: searchBooksfromTheme(theme),
          );
        },
        child: Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(
              Radius.circular(
                5.0,
              ),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
      ),
    );
  }
}
