import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../Utils/app_color.dart';
import '../../Utils/app_text_style.dart';
import '../../Utils/constants.dart';

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: AppColors.bgColor2,
     // alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 12),
      child: Column(
        children: [
          FadeInDown(
              duration: const Duration(milliseconds: 1200),
              child: RichText(
                text: TextSpan(
                    text: 'Latest ',
                    style: AppTextStyles.headingStyles(fontSize: 30),
                    children: [
                      TextSpan(
                        text: 'Projects',
                        style: AppTextStyles.headingStyles(
                            fontSize: 30, color: AppColors.robinEdgeBlue),
                      )
                    ]),
              )),
          Constants.sizedBox(height: 40),
      
        ],
      ),
    );
 
 ;
  }
}