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
            Theme.of(context).primaryColor,
            Colors.grey[500],
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 1.0],
        ),
      ),
    );
  }
}
