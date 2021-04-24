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
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  _buildProductDetails(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProductImages(),
              _buildProductTitle(),
              SizedBox(
                height: 12,
              ),
              _buildProductPrice(),
              SizedBox(
                height: 12,
              ),
              _buildDivider(size),
              SizedBox(
                height: 12,
              ),
              _buildFutherInfo(),
              SizedBox(
                height: 12,
              ),
              _buildDivider(size),
              SizedBox(
                height: 12,
              ),
              _buildSizeArea(),
              SizedBox(
                height: 12,
              ),
              _buildInfo()
            ],
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

  _buildProductTitle() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Center(
        child: Text(
          "Özel Marka Kazak",
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
    );
  }

  _buildProductPrice() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Text(
            "\$ 100",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "\$ 200",
            style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
                decoration: TextDecoration.lineThrough),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "\50% indirim",
            style: TextStyle(fontSize: 12, color: Colors.blue),
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
    );
  }

  _buildDivider(Size screenSize) {
    return Column(
      children: [
        Container(
          color: Colors.grey,
          width: screenSize.width,
          height: 0.25,
        )
      ],
    );
  }

  _buildFutherInfo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Icon(Icons.local_offer, color: Colors.grey),
          SizedBox(
            width: 12,
          ),
          Text(
            "Daha fazla bilgi için tıklayınız",
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }

  _buildSizeArea() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.straighten,
                color: Colors.grey,
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                "Beden : M",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          Row(
            children: [
              Text(
                "Beden Tablosu",
                style: TextStyle(fontSize: 14, color: Colors.blue),
              )
            ],
          )
        ],
      ),
    );
  }

  _buildInfo() {
    TabController tabController = TabController(length: 2, vsync: this);
    return Container(
      child: Column(
        children: [
          TabBar(
            controller: tabController,
            tabs: [
              Tab(
                child: Text(
                  "Ürün Bilgisi",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Yıkama Bilgisi",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              height: 40,
              child: TabBarView(
                controller: tabController,
                children: [
                  Text(
                    "% 60 Polyester. Kaliteli bir ürün.",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "30 derece renkli yıkama.",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ))
        ],
      ),
    );
  }

  _buildBottomNavigationBar() {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: RaisedButton(
                onPressed: () {},
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.list,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "İstek",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: RaisedButton(
                onPressed: () {},
                color: Colors.greenAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.card_travel,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Sepete Ekle",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
