import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ProductList",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: _buildProductListPage(),
    );
  }

  _buildProductListPage() {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          if (index == 0) {
            return _buildFilterWidgets(screenSize);
          } else if (index == 4) {
            return _buildFilterWidgets(screenSize);
          } else {
            return _buildFilterWidgets(screenSize);
          }
        },
        itemCount: 5,
      ),
    );
  }

  _buildFilterWidgets(Size screenSize) {}
}
