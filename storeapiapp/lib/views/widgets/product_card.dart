import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeapiapp/models/product_model.dart';

class ProductCard extends StatelessWidget {
  final Prdouct? prdouct;
  const ProductCard({
    required this.prdouct,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                blurRadius: 20,
                offset: const Offset(10, 10),
                spreadRadius: 0,
                color: Colors.grey.shade200)
          ]),
          child: Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 16,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    prdouct!.title!,overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Colors.grey, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r'$' '${prdouct!.price}',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              color: Colors.black,
                            ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.solidHeart,
                            color: Colors.red,
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            right: 15,
            top: -60,
            child: Image.network(
              prdouct!.image!,
              height: 100,
              width: 100,
            ))
      ],
    );
  }
}
