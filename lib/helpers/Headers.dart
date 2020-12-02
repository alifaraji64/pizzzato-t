import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pizzato/models/h-menus.dart';

class Headers extends ChangeNotifier {
  Widget appBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(icon: Icon(FontAwesomeIcons.userAlt), onPressed: () {}),
          Container(
            child: Row(
              children: [
                Icon(FontAwesomeIcons.locationArrow),
                Text(
                  'New Police Area',
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                    icon: Icon(FontAwesomeIcons.search), onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget headerText(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 280.0,
      ),
      child: RichText(
        text: TextSpan(
            text: 'What Would You Like',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.black,
              fontSize: 29.0,
            ),
            children: <TextSpan>[
              TextSpan(
                text: '\n to eat?',
                style: TextStyle(
                  fontSize: 46.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ]),
      ),
    );
  }

  Widget headerMenu(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (var item in items)
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: item.color,
                      blurRadius: 20.0,
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.grey.shade100,
                ),
                height: 40,
                width: 100,
                child: Center(
                  child: Text(
                    '${item.name}',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
