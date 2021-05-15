import 'package:flutter/material.dart';
import 'package:master_in_flutter/pages/home_page.dart';
import 'package:master_in_flutter/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:master_in_flutter/utils/routes.dart';
import 'package:master_in_flutter/widgets/themes.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
