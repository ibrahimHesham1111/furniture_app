import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/features/home/presentation/views/widgets/home_view_widgets/search_home_view.dart';
import 'package:furniture_app/features/home/presentation/views/widgets/home_view_widgets/section_product.dart';
import '../../../../../../constants/constants.dart';
import '../../../view_models/home_cubit/cubit.dart';
import 'category_list_view.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => HomeCubit(),
      child: Column(
        children:   [
           SearchHomeView(
            onChanged:(value) {},
          ),
          const CategoryListView(),
          const SizedBox(
            height: kDefaultPadding/2,
          ),
          const SectionProducts()
        ],

      ),
    );
  }
}







