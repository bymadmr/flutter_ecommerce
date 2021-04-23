import 'package:flutter/cupertino.dart';
import 'package:flutter_ecommerce/utilities/constants.dart';

class Routes {
  static final routes = <String, WidgetBuilder>{
    Constants.ROUTE_PRODUCT_DETAIL: (BuildContext context) =>
        ProductDetailPage()
  };
}
