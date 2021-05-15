import 'package:flutter/material.dart';
import 'package:master_in_flutter/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;

  final String name = "Pro-Pj";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
        ),
      ),
      body: Center(
        child: Container(
          child: Text(context.runtimeType.toString()),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
