import 'package:OMAR/Class/Book.dart';
import 'package:flutter/material.dart';

List<Book> searchBooksfromTheme(String theme){
  List<Book> books = getBooks();
  List<Book> newBooks = new List();

  for(Book book in books){
    for(String _theme in book.themes){
      if(theme == _theme){
        newBooks.add(book);
        break;
      }
    }
  }
  return newBooks;
}

List<Book> getBooks() {
  List<Book> list = new List();
  list.add(
    Book(
        title: 'Matemáticas Discretas',
        autors: ['ESPINOSA ARMENTA, Ramón'],
        themes: ['1','2','5'],
        library: 'Biblioteca de México',
        key: '511.3E86',
        year: '2010',
        editorial: 'Alfaomega',
        edition: '2',
        location:
            'De La Ciudadela No.4, Colonia Centro, Centro, Cuauhtémoc, 06040 Ciudad de México, CDMX',
        image: 'assets/imageBooks/matematicasDiscretasRamon.jpeg',
        physical: true,
        electronic: true,
        ),
        
  );
  
  list.add(
    Book(
        title: 'Matemáticas Discretas',
        autors: ['Comellas, Fracesc'],
        themes: ['2','3'],
        library: 'Biblioteca de México',
        key: '511.3M37',
        year: '2001',
        editorial: 'Alfaomega',
        edition: '1',
        location:
            'De La Ciudadela No.4, Colonia Centro, Centro, Cuauhtémoc, 06040 Ciudad de México, CDMX',
        image: 'assets/imageBooks/matematicasDiscretasComellas.jpeg', physical: false, electronic: true,),
  );
  list.add(
    Book(
      title: 'Matemática discreta y lógica',
      autors: ['GRASSMANN, Winfried K, TREMBLAY, J. P.'],
      themes: ['1','2','3','4','5'],
      library: 'Biblioteca Antonio Dovalí Jaime',
      key: 'QA76.9M35 G73 1996',
      year: '1996',
      editorial: 'Prentice Hall',
      edition: '1',
      location:
          'Avenida Universidad 3000, Copilco el Bajo, Coyoacán, 04350 Ciudad de México, CDMX',
      image: 'assets/imageBooks/Matematica_discreta_y_logica.jpg',
      physical: true,
      electronic: true,
    ),
  );
  

  return list;
}
