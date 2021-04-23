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
            return Text("Son kısım");
          } else {
            return Text("Ürünler");
          }
        },
        itemCount: 5,
      ),
    );
  }

  _buildFilterWidgets(Size screenSize) {
    return Container(
      margin: EdgeInsets.all(10),
      width: screenSize.width,
      child: Card(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildFilterButton("Sırala"),
              Container(
                color: Colors.black,
                width: 2,
                height: 24,
              ),
              _buildFilterButton("Filtrele"),
            ],
          ),
        ),
      ),
    );
  }

  _buildFilterButton(String title) {
    return InkWell(
      child: Row(
        children: <Widget>[
          Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
          ),
          SizedBox(
            width: 2,
          ),
          Text(title)
        ],
      ),
    );
  }
}
