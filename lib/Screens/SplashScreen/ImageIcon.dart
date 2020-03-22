import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart' as animate;
class ImageIcon extends StatelessWidget {
  const ImageIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width / 2 : MediaQuery.of(context).size.height / 2.5,
        height: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width / 2 : MediaQuery.of(context).size.height / 2.5,
        child: Center(
          ///Icono
          child: animate.BounceInDown(
            duration: Duration(seconds: 2),
            child: Image.asset('assets/icon.png'),
          ),
        ),
      ),
    );
  }
}
