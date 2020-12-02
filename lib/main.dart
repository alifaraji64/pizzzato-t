import 'package:flutter/material.dart';
import 'package:pizzato/helpers/Headers.dart';
import 'package:pizzato/helpers/Middle.dart';
import 'package:pizzato/services/ManageData.dart';
import 'package:pizzato/views/SplashScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Headers()),
        ChangeNotifierProvider.value(value: MiddlHelpers()),
        ChangeNotifierProvider.value(value: ManageData()),
      ],
      child: MaterialApp(
          title: 'Pizzato',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.red,
            primaryColor: Colors.redAccent,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: SplashScreen()),
    );
  }
}
