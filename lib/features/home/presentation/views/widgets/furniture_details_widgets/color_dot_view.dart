import 'package:flutter/material.dart';
import 'package:furniture_app/features/home/presentation/view_models/details_cubit/details_cubit.dart';

class ColorDotView extends StatelessWidget {
  const ColorDotView({Key? key, required this.fillColor, required this.isSelected}) : super(key: key);
  final Color fillColor;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border:isSelected ? Border.all():null,
        color: isSelected ? const Color(0xFF707070): Colors.transparent,
      ),
      child: Container(
        decoration:   BoxDecoration(
            shape: BoxShape.circle,
            color: fillColor
        ),
      ),
    );
  }
}
