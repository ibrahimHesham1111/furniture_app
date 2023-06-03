import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../constants/constants.dart';

AppBar buildAppBarDetailsView(context){
  return  AppBar(
  elevation: 0,
  backgroundColor: kBackgroundColor,
  leading: IconButton(
  padding: const EdgeInsets.only(left: kDefaultPadding),
  icon: SvgPicture.asset('assets/icons/back.svg'),
  onPressed: (){
  Navigator.pop(context);
  },
  ),
  title: Text(
  'back'.toUpperCase(),
  style: Theme.of(context).textTheme.bodyText2,
  ),
  actions: [
  IconButton(
  onPressed: (){},
  icon: SvgPicture.asset(
  'assets/icons/cart_with_item.svg',
  )
  )
  ],
  );
}