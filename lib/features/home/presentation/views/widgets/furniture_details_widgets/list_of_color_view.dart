import 'package:flutter/material.dart';

import '../../../../../../constants/constants.dart';
import '../../../view_models/details_cubit/details_cubit.dart';
import 'color_dot_view.dart';

class ListOfColorView extends StatelessWidget {
  const ListOfColorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:   [
          ColorDotView(
            fillColor: const Color(0xFF80989A),
            isSelected:DetailsCubit.get(context).isSelected,
          ),
          ColorDotView(
            fillColor: const Color(0xFFFF5200),
            isSelected:DetailsCubit.get(context).isSelected,
          ),
          ColorDotView(
            fillColor: kPrimaryColor,
            isSelected:DetailsCubit.get(context).isSelected,
          ),
        ],
      ),
    );
  }
}
