import 'package:http/http.dart';
import 'package:storeapiapp/helper/api.dart';
import 'package:storeapiapp/models/product_model.dart';

class CaregoriesServices {
  Future<List<Prdouct>> getCategoriesProducts(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');
    List<Prdouct> productlist = [];
    for (var i = 0; i < data.length; i++) {
      productlist.add(Prdouct.fromJson(data[i]));
    }

    return productlist;
  }
}
