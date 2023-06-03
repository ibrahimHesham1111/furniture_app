import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/features/home/presentation/view_models/home_cubit/cubit.dart';
import 'package:furniture_app/features/home/presentation/view_models/home_cubit/states.dart';

import '../../../../../../constants/constants.dart';
import 'category_list_item_view.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<HomeCubit,HomeStates>(
      listener: (context,state){},
      builder: (context,state){
        return Container(
          margin: const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
          height: 30.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index)=>CategoryItem(index: index),
            itemCount: HomeCubit.get(context).category.length,
          ),
        );
      },
    );
  }
}



