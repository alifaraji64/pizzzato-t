import 'package:flutter/material.dart';
import 'package:pizzato/helpers/Headers.dart';
import 'package:pizzato/helpers/Middle.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Headers().appBar(context),
              Headers().headerText(context),
              Headers().headerMenu(context),
              Divider(),
              MiddlHelpers().textFav(),
            ],
          ),
        ),
      ),
    );
  }
}
