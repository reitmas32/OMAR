import 'package:flutter/material.dart';

class Book {
  String title;
  String editorial;
  List<String> autors;
  String year;
  String edition;
  String library;
  List<String> themes;
  String key;
  String availability;
  String location;
  String image;
  String review;
  String stars;
  bool physical;
  bool electronic;
  String apa;
  Color colorTop;
  Color colorEnd;
  Color colorAcent;
  Color colorText;
  String country;

  Book({
    this.autors,
    this.availability,
    this.edition,
    this.editorial,
    this.key,
    this.library,
    this.location,
    this.themes,
    this.title,
    this.year,
    this.image,
    this.colorTop,
    this.colorEnd,
    this.colorAcent,
    this.colorText,
    this.review,
    this.stars,
    this.physical,
    this.apa,
    this.electronic,
    this.country,
  }){
    this.apa = this.autors[0] + ' (' + this.year + '). ' + this.title + ' ed. ' + this.edition + ' '+this.editorial + '.';
  }

  Book.fromJson(Map<String, dynamic> json) {
    autors = json['autors'];
    availability = json['availability'];
    edition = json['edition'];
    editorial = json['editorial'];
    key = json['key'];
    library = json['library'];
    location = json['location'];
    themes = json['themes'];
    title = json['title'];
    year = json['year'];
    image = json['image'];
    physical = json['physical'];
    /*
    colorTop = json['colorTop']; 
    colorEnd = json['colorEnd']; 
    colorAcent = json['colorAcent']; 
    colorText = json['colorText']; 
    */
    review = json['review'];
    stars = json['stars'];
  }

  void Print() {
    print(this.title);
    print(this.autors.toString());
    print(this.library.toString());
    print(this.edition);
    print(this.themes);
    print(this.availability);
    print(this.editorial);
    print(this.location);
    print(this.year);
    print(this.key);
  }
}
