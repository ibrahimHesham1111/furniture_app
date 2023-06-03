import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/features/home/data/models/products_model.dart';
import 'package:furniture_app/features/home/presentation/view_models/details_cubit/details_cubit.dart';
import 'package:furniture_app/features/home/presentation/view_models/details_cubit/details_state.dart';
import 'package:furniture_app/features/home/presentation/views/widgets/furniture_details_widgets/product_poster_view.dart';
import '../../../../../../constants/constants.dart';
import 'list_of_color_view.dart';
class FurnitureDetailsBody extends StatelessWidget {
  const FurnitureDetailsBody({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<DetailsCubit,DetailsStates>(
      listener: (context,state){},
      builder: (context,state){
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //height: MediaQuery.of(context).size.height*.7,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(55),
                    bottomRight: Radius.circular(55),
                  ) ,
                  color: kBackgroundColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:   [
                     Center(
                        child: SizedBox(
                       height: MediaQuery.of(context).size.height*.38,
                          child: ProductPosterView(
                            image: product.image,
                          ),
                        )
                    ),
                    const ListOfColorView(),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                          product.title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                     Text(
                        '\$${product.price}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: kSecondaryColor
                      ),
                    ),
                     Padding(
                        padding:  const EdgeInsets.symmetric(vertical: 10),
                      child:Text(
                          product.description,
                        style: const TextStyle(
                          color: kTextLightColor
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                  ],
                ),
              ),
             Container(
               margin: const EdgeInsets.symmetric(
                 vertical: 20,
                 horizontal: 30
               ),
               padding: const EdgeInsets.symmetric(
                 vertical: 5,
                 horizontal: 20
               ),
               decoration: BoxDecoration(
                 color: const Color(0xFFFCBF1E),
                  borderRadius: BorderRadius.circular(20)
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children:  [
                  SvgPicture.asset('assets/icons/chat.svg'),
                   const SizedBox(
                     width: 10,
                   ),
                   const Text(
                       'Chat',
                     style: TextStyle(
                       color: Colors.white
                     ),
                   ),
                   const Spacer(),
                   TextButton.icon(
                       onPressed: (){},
                       icon: SvgPicture.asset('assets/icons/shopping-bag.svg'),
                       label: const Text(
                           'Add to Cart',
                         style: TextStyle(
                           color: Colors.white
                         ),
                       )
                   )
                 ],
               ),
             ),
            ],
          ),
        );
      },
    );
  }
}
