import 'package:OMAR/Screens/BookView/BookView.dart';
import 'package:OMAR/Screens/ListViewBook/ListViewBook.dart';
import 'package:flutter/widgets.dart';

import 'Screens/SplashScreen/SplashScreen.dart';

class Controller {
  static getRoutes(BuildContext context) {
    return {
      '/SplashScreen': (context) => SplashScreen(),
      '/ListViewBook': (context) => ListViewBook(),
      '/BookView': (context) => BookView(),
    };
  }
}
