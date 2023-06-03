import 'package:flutter/material.dart';

class ProductPosterView extends StatelessWidget {
  const ProductPosterView({Key? key, required this.image}) : super(key: key);

final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.symmetric(
        vertical: 20.0,
      ),
      height: MediaQuery.of(context).size.width*.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children:  [
          Container(
            width: MediaQuery.of(context).size.width*.5,
            height:MediaQuery.of(context).size.width*.5 ,
            decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle
            ),
          ),
          Image.asset(
            image,
            height: MediaQuery.of(context).size.width*.55,
            width: MediaQuery.of(context).size.width*.55,
            fit: BoxFit.cover,
          ),

        ],
      ),
    );
  }
}
