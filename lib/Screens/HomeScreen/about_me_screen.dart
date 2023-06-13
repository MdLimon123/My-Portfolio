import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/Utils/app_button.dart';
import 'package:personal_portfolio/Utils/constants.dart';

import '../../Utils/app_color.dart';
import '../../Utils/app_image.dart';
import '../../Utils/app_text_style.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      alignment: Alignment.center,
      color: AppColors.bgColor2,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.1),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FadeInRight(
            duration: const Duration(milliseconds: 1400),
            child: Image.asset(
              AppsImage.profile1,
              height: 450,
              width: 400,
            ),
          ),
          Constants.sizedBox(width: 25),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                FadeInRight(
                    duration: const Duration(milliseconds: 1200),
                    child: RichText(
                      text: TextSpan(
                          text: 'About ',
                          style: AppTextStyles.headingStyles(fontSize: 30),
                          children: [
                            TextSpan(
                              text: 'Me',
                              style: AppTextStyles.headingStyles(
                                  fontSize: 30, color: AppColors.robinEdgeBlue),
                            )
                          ]),
                    )),
                Constants.sizedBox(height: 6),
                FadeInLeft(
                  duration: const Duration(milliseconds: 1400),
                  child: Text(
                    "Flutter Developer!",
                    style: AppTextStyles.montserratStyle(color: Colors.white),
                  ),
                ),
                Constants.sizedBox(height: 8),
                FadeInLeft(
                  duration: const Duration(milliseconds: 1600),
                  child: Text(
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'
                    ' The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,'
                    ' as opposed to using \'Content here, content here\', making it look like readable English.'
                    ' Many desktop publishing packages and web page editors now use Lorem Ipsum as their default'
                    ' model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.'
                    ' Various versions have evolved over the years, sometimes by accident, sometimes on purpose'
                    ' (injected humour and the like).',
                    style: AppTextStyles.normalStyle(),
                  ),
                ),
                Constants.sizedBox(height: 15.0),
                FadeInUp(
                    duration: const Duration(milliseconds: 1800),
                    child: AppButtons.buildMaterialButton(
                        buttonName: "Read", onTap: () {}))
              ],
            ),
          )
        ],
      ),
    );
  }
}
