import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/Utils/app_color.dart';
import 'package:personal_portfolio/Utils/app_image.dart';
import 'package:personal_portfolio/Utils/app_text.dart';
import 'package:personal_portfolio/Utils/app_text_style.dart';
import 'package:personal_portfolio/Utils/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: _appBar(),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
              left: size.width * 0.2,
              right: size.width * 0.2,
              top: size.height * 0.3),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, It\'s Me",
                        style: AppTextStyles.montserratStyle(
                            color: AppColors.white),
                      ),
                      Constants.sizedBox(height: 15),
                      Text(
                        "Md Limon Islam",
                        style: AppTextStyles.headingStyles(),
                      ),
                      Constants.sizedBox(height: 15),
                      Row(
                        children: [
                          Text(
                            "And I\'m a ",
                            style: AppTextStyles.montserratStyle(
                                color: AppColors.white),
                          ),
                          AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText('Flutter Developer',
                                  textStyle: AppTextStyles.montserratStyle(
                                      color: AppColors.robinEdgeBlue)),
                            ],
                            pause: const Duration(milliseconds: 1000),
                            displayFullTextOnTap: true,
                            stopPauseOnTap: true,
                          )
                        ],
                      ),
                      Constants.sizedBox(height: 15),
                      SizedBox(
                        width: size.width * 0.3,
                        child: Text(
                          'In publishing and graphic design, Lorem ipsum is a placeholder '
                          'text commonly used to demonstrate the visual form of a document'
                          ' or a typeface without relying on meaningful content. ',
                          style: AppTextStyles.normalStyle(),
                        ),
                      ),
                      Constants.sizedBox(height: 15),
                      Row(
                        children: [
                          buildSocialButton(image: AppsImage.facebook),
                          Constants.sizedBox(width: 12),
                          buildSocialButton(image: AppsImage.linkedin),
                          Constants.sizedBox(width: 12),
                          buildSocialButton(image: AppsImage.twitter),
                          Constants.sizedBox(width: 12),
                          buildSocialButton(image: AppsImage.insta),
                          Constants.sizedBox(width: 12),
                          buildSocialButton(image: AppsImage.github),
                        ],
                      ),
                      Constants.sizedBox(height: 15),
                      _buildMaterialButton(
                        onTap: () {},
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }

  _buildMaterialButton({required VoidCallback onTap}) {
    return MaterialButton(
      color: AppColors.aqua,
      splashColor: AppColors.lawGreen,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      shape: OutlineInputBorder(
          borderSide: BorderSide.none, borderRadius: BorderRadius.circular(30)),
      onPressed: onTap,
      hoverColor: AppColors.bgColor,
      height: 46,
      elevation: 6,
      focusElevation: 12,
      minWidth: 130,
      child: Text(
        'Download CV',
        style: AppTextStyles.headerTextStyle(),
      ),
    );
  }

  Ink buildSocialButton({required String image}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          color: AppColors.bgColor,
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.themeColor, width: 2.0)),
      padding: const EdgeInsets.all(6),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(500.0),
        hoverColor: AppColors.aqua,
        splashColor: AppColors.lawGreen,
        child: Image.asset(
          image,
          height: 12,
          width: 10,
          color: AppColors.themeColor,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  _appBar() {
    return AppBar(
      elevation: 0,
      toolbarHeight: 90,
      titleSpacing: 100,
      backgroundColor: AppColors.bgColor,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            AppsText.portfolio,
            style: AppTextStyles.headerTextStyle(),
          ),
          const Spacer(),
          Text(AppsText.home, style: AppTextStyles.headerTextStyle()),
          Constants.sizedBox(
            width: 30,
          ),
          Text(AppsText.about, style: AppTextStyles.headerTextStyle()),
          Constants.sizedBox(width: 30),
          Text(AppsText.services, style: AppTextStyles.headerTextStyle()),
          Constants.sizedBox(width: 30),
          Text(AppsText.portfolio, style: AppTextStyles.headerTextStyle()),
          Constants.sizedBox(width: 30),
          Text(AppsText.contact, style: AppTextStyles.headerTextStyle()),
        ],
      ),
    );
  }
}