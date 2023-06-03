import 'package:flutter/material.dart';
import 'package:furniture_app/features/home/data/models/products_model.dart';
import 'package:furniture_app/features/home/presentation/views/furniture_details_view.dart';
import 'package:furniture_app/features/home/presentation/views/widgets/home_view_widgets/product_card_item.dart';
class ProductListView extends StatelessWidget {
  const ProductListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
        itemBuilder: (context,index)=>
          ProductCardItem(
           itemIndex: index,
           product: products[index],
            pressed: (){
             Navigator.push(context, MaterialPageRoute(
                 builder: (context)=> FurnitureDetailsView(product: products[index],),
             )
             );
            },
         ),
      itemCount: products.length,
    );
  }
}
