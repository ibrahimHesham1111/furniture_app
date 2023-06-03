import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/features/home/data/models/products_model.dart';
import 'package:furniture_app/features/home/presentation/view_models/details_cubit/details_cubit.dart';
 import 'package:furniture_app/features/home/presentation/views/widgets/furniture_details_widgets/appbar_details_view.dart';
import 'package:furniture_app/features/home/presentation/views/widgets/furniture_details_widgets/furniture_details_body.dart';
import '../../../../constants/constants.dart';

class FurnitureDetailsView extends StatelessWidget {
  const FurnitureDetailsView({Key? key, required this.product}) : super(key: key);
final Product product;
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context)=>DetailsCubit(),
      child: Scaffold(
        backgroundColor: kPrimaryColor,
         appBar: buildAppBarDetailsView(context),
        body:  FurnitureDetailsBody(product:product ),
      ),
    );
  }
}
