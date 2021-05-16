import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:master_in_flutter/models/catalogue.dart';
import 'package:master_in_flutter/widgets/drawer.dart';
import 'package:master_in_flutter/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Pro-Pj";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogueModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogueModel.items != null && CatalogueModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  final item = CatalogueModel.items[index];
                  return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: GridTile(
                        header: Container(
                            decoration: BoxDecoration(
                              color: Colors.deepPurple,
                            ),
                            padding: const EdgeInsets.all(12),
                            child: Text(
                              item.name,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                        child: Image.asset(item.image),
                        footer: Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                            padding: const EdgeInsets.all(12),
                            child: Text(
                              item.price.toString(),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                      ));
                },
                itemCount: CatalogueModel.items.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
