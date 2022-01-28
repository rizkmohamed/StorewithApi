
import 'package:storeapiapp/helper/api.dart';
import 'package:storeapiapp/models/product_model.dart';

class AllProductServices {
  Future<List<Prdouct>> getAllProducts() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<Prdouct> productlist = [];
    for (var i = 0; i < data.length; i++) {
      productlist.add(Prdouct.fromJson(data[i]));
    }

    return productlist;
  }
}
