import 'package:flutter/material.dart';
import 'package:personal_portfolio/Utils/app_color.dart';

class FooterClass extends StatelessWidget {
  const FooterClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      color: AppColors.bgColor2,
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.themeColor),
          child: const Icon(
            Icons.arrow_upward,
            color: Colors.black,
            size: 25,
          ),
        ),
      ),
    );
  }
}
