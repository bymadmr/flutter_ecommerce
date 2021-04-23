import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProductDetailState();
}

class _ProductDetailState extends State with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              size: 40,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        backgroundColor: Colors.white,
        title: Text(
          "Product Detail",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: _buildProductDetails(context),
    );
  }

  _buildProductDetails(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [_buildProductImages()],
          ),
        )
      ],
    );
  }

  _buildProductImages() {
    TabController imagesControler = TabController(length: 3, vsync: this);
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        height: 250,
        child: Center(
          child: DefaultTabController(
            length: 3,
            child: Stack(
              children: <Widget>[
                TabBarView(
                  controller: imagesControler,
                  children: [
                    Image.network(
                        "https://cdn-panco.akinon.net/products/2018/10/31/53835/58185212-8898-4fe4-858b-5c4ed6442d77_size780x780_cropCenter.jpg"),
                    Image.network(
                        "https://www.bebekhouse.com/UserFiles/ProductImages/0/17ytuc38746/orj/tuc-tuc-kiz-cocuk-orgu-kazak-acik-gri-74842.jpg"),
                    Image.network(
                        "https://img-lcwaikiki.mncdn.com/mnresize/800/-/pim/productimages/20202/4589399/l_20202-0wbd73z8-hkd_b.jpg")
                  ],
                ),
                Container(
                  alignment: FractionalOffset(0.5, 0.95),
                  child: TabPageSelector(
                    controller: imagesControler,
                    selectedColor: Colors.grey,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
