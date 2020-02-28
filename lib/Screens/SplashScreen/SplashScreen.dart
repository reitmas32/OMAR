import 'package:OMAR/Class/Books.dart';
import 'package:OMAR/Screens/SplashScreen/BackGround.dart';
import 'package:animate_do/animate_do.dart' as animate;
import 'package:OMAR/Screens/SplashScreen/ImageIcon.dart' as icon;
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  FlutterTts flutterTts = FlutterTts();
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () {
        Navigator.of(context).pushNamedAndRemoveUntil(
            '/ListViewBook', (route) => false,
            arguments: getBooks());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Future _speak() async {
      // await flutterTts.setLanguage('es-ES');
      // await flutterTts.speak("Hola yo soy OMAR");
    }

    final double height_box = MediaQuery.of(context).size.height / 6;
    _speak();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackGround(),
          Column(
            children: <Widget>[
              ///Caja para la ubicacion correcta del icono
              SizedBox(
                height: height_box,
              ),
              icon.ImageIcon(),

              ///Text 'from'
              buildTextFrom(height_box),

              ///Text 'ORSHWARE'
              buildTextOrshware(height_box),
            ],
          ),
        ],
      ),
    );
  }

  animate.Flash buildTextOrshware(double height_box) {
    return animate.Flash(
      duration: Duration(seconds: 1),
      child: Container(
        height: height_box - 10,
        child: Center(
          child: Text(
            'ORSHWARE',
            style: TextStyle(
              color: Colors.black,
              fontSize: height_box / 4,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }

  animate.FadeIn buildTextFrom(double height_box) {
    return animate.FadeIn(
      duration: Duration(seconds: 2),
      child: Container(
        height: height_box / 5,
        child: Center(
          child: Text(
            'from',
            style: TextStyle(
              fontSize: height_box / 5 - 3,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
