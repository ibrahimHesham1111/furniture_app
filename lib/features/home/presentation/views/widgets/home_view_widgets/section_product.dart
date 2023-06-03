import 'package:flutter/material.dart';
import 'package:furniture_app/features/home/presentation/views/widgets/home_view_widgets/product_list_view.dart';
import '../../../../../../constants/constants.dart';

class SectionProducts extends StatelessWidget {
  const SectionProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children:  [
          Container(
            margin: const EdgeInsets.only(
                top: 70.0
            ),
            decoration:  const BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
            ),
          ),
          const ProductListView(),
        ],
      ),
    );
  }
}
