import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utilities/constants.dart';

class ProductListRow extends StatelessWidget {
  String name;
  int currentPrice;
  int orginalPrice;
  int discount;
  String imageUrl;

  ProductListRow(
      {this.name,
      this.currentPrice,
      this.orginalPrice,
      this.discount,
      this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildProductItemCard(context),
        _buildProductItemCard(context)
      ],
    );
  }

  _buildProductItemCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Constants.ROUTE_PRODUCT_DETAIL);
      },
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.network(this.imageUrl),
              height: 250,
              width: MediaQuery.of(context).size.width / 2.2,
            ),
          ],
        ),
      ),
    );
  }
}
