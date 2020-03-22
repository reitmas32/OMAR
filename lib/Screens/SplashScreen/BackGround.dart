import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  const BackGround({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.grey[500],
            Colors.white,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 1.0],
        ),
      ),
    );
  }
}
