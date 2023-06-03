import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../constants/constants.dart';

class SearchHomeView extends StatelessWidget {
  const SearchHomeView({Key? key,  this.onChanged}) : super(key: key);
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(kDefaultPadding),
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultPadding/4,
        ),
        decoration:  BoxDecoration(
            color: Colors.white.withOpacity(0.4),
            borderRadius: BorderRadius.circular(20)
        ),
        child:  TextField(
       onChanged: onChanged,

          style: const TextStyle(
              color: Colors.white
          ),
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            icon: SvgPicture.asset('assets/icons/search.svg'),
            hintText: 'Search',
            hintStyle: const TextStyle(
                color: Colors.white
            ),

          ),
        )
    );

  }
}