import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeapiapp/models/product_model.dart';
import 'package:storeapiapp/services/all_product_service.dart';
import 'package:storeapiapp/views/widgets/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomaPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'NewBrand',
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.cartPlus,
                color: Colors.cyan,
              ))
        ],
      ),
      body: Padding(
          padding:
              const EdgeInsetsDirectional.only(start: 16, end: 16, top: 70),
          child: FutureBuilder<List<Prdouct>>(
            future: AllProductServices().getAllProducts(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Prdouct>? product = snapshot.data;
                return GridView.builder(
                    clipBehavior: Clip.none,
                    itemCount: product!.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.4,
                            mainAxisSpacing: 100,
                            crossAxisSpacing: 15),
                    itemBuilder: (context, index) {
                      return ProductCard(
                        prdouct: product[index],
                      );
                    });
              } else {
                return const Center(
                  child: CircularProgressIndicator.adaptive(
                      backgroundColor: Colors.black),
                );
              }
            },
          )),
    );
  }
}
