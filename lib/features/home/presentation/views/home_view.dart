import 'package:flutter/material.dart';
import 'package:furniture_app/features/home/presentation/views/widgets/home_view_widgets/appbar_view.dart';
import 'package:furniture_app/features/home/presentation/views/widgets/home_view_widgets/home_view_body.dart';
import '../../../../constants/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body:  const HomeViewBody(),
    );
  }
}


