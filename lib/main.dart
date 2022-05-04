import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:animate_do_app/src/enums/enums.dart';
import 'package:animate_do_app/src/routes/routes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated Do app',
      routes: routes,
      initialRoute: Routes.homePage.name,
    );
  }
}
