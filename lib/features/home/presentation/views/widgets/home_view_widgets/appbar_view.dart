import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar buildAppBar(){
  return AppBar(
    title: const Text(
      'Dashboard',
    ),
    actions:  [
      IconButton(
        onPressed: (){},
        icon: SvgPicture.asset('assets/icons/notification.svg'),
      )
    ],
  );
}