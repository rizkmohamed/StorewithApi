import 'package:storeapiapp/helper/api.dart';
import 'package:storeapiapp/models/product_model.dart';

class AddProductService {
  Future<Prdouct> addProduct({
    required String title,
    required String price,
    required String descr,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'description': descr,
        'image': image,
        'category': category
      },
    );
    return Prdouct.fromJson(data);
  }
}
