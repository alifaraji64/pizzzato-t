import 'package:flutter/material.dart';

class MiddlHelpers extends ChangeNotifier {
  Widget textFav() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: RichText(
        text: TextSpan(
            text: 'favorite',
            style: TextStyle(
              shadows: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 1,
                )
              ],
              fontWeight: FontWeight.w300,
              color: Colors.black,
              fontSize: 29.0,
            ),
            children: <TextSpan>[
              TextSpan(
                text: ' dishes',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[700],
                  shadows: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 1,
                    )
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
