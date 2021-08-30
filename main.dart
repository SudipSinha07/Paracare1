
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterpara/page38.dart';
import 'package:flutterpara/page25.dart';


void main() async {
  //catch error
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.onError = (FlutterErrorDetails details) {
    if (kReleaseMode) {
      exit(1);
    }
  };
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'paracare app',
      theme: ThemeData(
        //primarySwatch: Colors.lightBlue,
      ),

      //home: page38(),
      home: page25(),



    );
  }
}
