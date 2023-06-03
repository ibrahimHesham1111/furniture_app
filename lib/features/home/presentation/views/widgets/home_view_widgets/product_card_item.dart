import 'package:flutter/material.dart';
import '../../../../../../constants/constants.dart';
import '../../../../data/models/products_model.dart';
class ProductCardItem extends StatelessWidget {
  const ProductCardItem({Key? key, required this.itemIndex, required this.product, required this.pressed}) : super(key: key);
  final int itemIndex;
  final Product product;
  final GestureTapCallback? pressed;
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return  Container(
      margin: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultPadding/2
      ),
      //color: Colors.blueAccent,
      height: 160,
      child:
      InkWell(
        onTap: pressed,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 136,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: itemIndex.isEven ? kBlueColor : kSecondaryColor,
                  boxShadow: const [kDefaultShadow]
              ),
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.white
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal:kDefaultPadding ),
                height: 160,
                width: 200,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                width: size.width-200,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:30 ),
                      child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.button
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding *1.5,
                          vertical: kDefaultPadding/4
                      ),
                      decoration: const BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(22),
                            topRight: Radius.circular(22),

                          )
                      ),
                      child:  Text(
                        '\$${product.price}',
                        style: Theme.of(context).textTheme.button,
                      ),
                    )
                  ],
                ) ,

              ),
            )
          ],
        ),
      ),
    );
  }
}
