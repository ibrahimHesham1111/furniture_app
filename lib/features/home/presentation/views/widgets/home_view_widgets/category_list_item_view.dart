import 'package:flutter/material.dart';
import '../../../../../../constants/constants.dart';
import '../../../view_models/home_cubit/cubit.dart';
class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        HomeCubit.get(context).changeSelectItem(index);
      },
      child: Container(
        alignment: Alignment.center,
        margin:  EdgeInsets.only(
            left: kDefaultPadding,
            right: index == HomeCubit.get(context).category.length-1 ? kDefaultPadding : 0
        ),
        padding: const EdgeInsetsDirectional.only(
          start: kDefaultPadding,
          end: kDefaultPadding,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color:index==HomeCubit.get(context).selectedIndex
                ? Colors.white.withOpacity(0.4)
                :Colors.transparent
        ),
        child: Text(
          HomeCubit.get(context).category[index],
          style: const TextStyle(
              color: Colors.white
          ),
        ),
      ),
    );
  }
}