import 'package:OMAR/Class/Book.dart';
import 'package:OMAR/Class/Books.dart';
import 'package:OMAR/Screens/ListViewBook/CardBook.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:floating_search_bar/floating_search_bar.dart';

import 'dart:io' show Platform;
import 'package:flutter/foundation.dart';

List<String> themes = [
  "Lógica prposicional y cálculo de predicados",
  "Conjuntos, relaciones y pruebas matemáticas",
  "Sistemas algebraicos",
  "Teoría de gráficas",
  "Teoría de la computabilidad"
];

/*
bool searchText({String value, String key}){
  for (var i = 0; i < value.length; i++) {
    if(value[i]);
  }
}
*/

class ListViewBook extends StatefulWidget {
  ListViewBook({Key key}) : super(key: key);

  @override
  _ListViewBookState createState() => _ListViewBookState();
}
/*
class _ListViewBookState extends State<ListViewBook> {
  @override
  Widget build(BuildContext context) {
    List<Object> arguments = ModalRoute.of(context).settings.arguments;
    List<Book> books = arguments[0];
    List<Book> tmp = List();
    String title = arguments[1];
    return Scaffold(
      drawer: Opacity(
        opacity: 0.75,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).orientation == Orientation.portrait
              ? MediaQuery.of(context).size.width / 1.3
              : MediaQuery.of(context).size.width / 2.2,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
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
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.elliptical(20.0, 20.0),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          print(MediaQuery.of(context).orientation);
                          Navigator.of(context).pop();
                          Navigator.of(context).pushNamed(
                            '/ListViewBook',
                            arguments: [getBooks(), "OMAR"],
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                  Text(
                    'Consulta nuestro PDF',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  SelectableText(
                    "https://drive.google.com/file/d/1Dkui5b5yufnAKupssa_s5orkKe05_CWq/view?usp=sharing",
                    toolbarOptions: ToolbarOptions(copy: true),
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  Text(
                    "Contacta con los desarrolladores",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  Center(
                    child: Row(
                      children: <Widget>[
                      
                        SelectableText(
                          "orshware@gmail.com",
                          toolbarOptions: ToolbarOptions(copy: true),
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[700],
        iconTheme: IconThemeData(
          color: Color.fromRGBO(211, 0, 0, 1.0),
        ),
        title: Text(title),
      ),
      body: FloatingSearchBar.builder(
        drawer: ,
        pinned: true,
        itemCount: 100,
        padding: EdgeInsets.only(top: 10.0),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Text(index.toString()),
          );
        },
        leading: CircleAvatar(
          child: Text("RD"),
        ),
        endDrawer: Drawer(
          child: Container(),
        ),
        onChanged: (String value) {},
        onTap: () {},
        decoration: InputDecoration.collapsed(
          hintText: "Search...",
        ),
      ),
      /*
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, int index) {
          return CardBook(
            book: books[index],
          );
        },
      ),
      */
    );
  }
}
*/

class _ListViewBookState extends State<ListViewBook> {
  List<Book> booksList;

  @override
  void initState() {
    booksList = List();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Object> arguments = ModalRoute.of(context).settings.arguments;
    List<Book> books = arguments[0];
    List<Book> tmpBooks = List();
    booksList.addAll(books);
    String title = arguments[1];
    return FloatingSearchBar.builder(
      drawer: Opacity(
        opacity: 0.75,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).orientation == Orientation.portrait
              ? MediaQuery.of(context).size.width / 1.3
              : MediaQuery.of(context).size.width / 2.2,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
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
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.elliptical(20.0, 20.0),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          print(MediaQuery.of(context).orientation);
                          Navigator.of(context).pop();
                          Navigator.of(context).pushNamed(
                            '/ListViewBook',
                            arguments: [getBooks(), "OMAR"],
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                  Text(
                    'Consulta nuestro PDF',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  SelectableText(
                    "https://drive.google.com/file/d/1Dkui5b5yufnAKupssa_s5orkKe05_CWq/view?usp=sharing",
                    toolbarOptions: ToolbarOptions(copy: true),
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  Text(
                    "Contacta con los desarrolladores",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  Center(
                    child: Row(
                      children: <Widget>[
                        SelectableText(
                          "orshware@gmail.com",
                          toolbarOptions: ToolbarOptions(copy: true),
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      pinned: true,
      itemCount: 100,
      padding: EdgeInsets.only(top: 10.0),
      itemBuilder: (BuildContext context, int index) {
        return CardBook(
          book: booksList[index],
        );
      },
      onChanged: (String value) {
        setState(() {
          booksList.clear();
          booksList.addAll(searchBooksfromTheme(value));
        });
      },
      onTap: () {},
      decoration: InputDecoration.collapsed(
        hintText: "Busca por temas",
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
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.elliptical(20.0, 20.0),
        ),
        child: GestureDetector(
          onTap: () {
            print(MediaQuery.of(context).orientation);
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed(
              '/ListViewBook',
              arguments: [
                searchBooksfromTheme(theme),
                themes[int.parse(theme) - 1]
              ],
            );
          },
          child: Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.white,
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
      ),
    );
  }
}
