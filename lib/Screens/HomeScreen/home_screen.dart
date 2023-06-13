import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/Screens/HomeScreen/about_me_screen.dart';
import 'package:personal_portfolio/Screens/HomeScreen/contact_us.dart';
import 'package:personal_portfolio/Screens/HomeScreen/footer_class.dart';
import 'package:personal_portfolio/Screens/HomeScreen/my_portfolio.dart';
import 'package:personal_portfolio/Screens/HomeScreen/my_service_screen.dart';
import 'package:personal_portfolio/Utils/app_button.dart';
import 'package:personal_portfolio/Utils/app_color.dart';
import 'package:personal_portfolio/Utils/app_image.dart';
import 'package:personal_portfolio/Utils/app_text.dart';
import 'package:personal_portfolio/Utils/app_text_style.dart';
import 'package:personal_portfolio/Utils/constants.dart';
import 'package:personal_portfolio/Widgets/profile_animation.dart';

import '../../conttroller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: AppBar(
          backgroundColor: AppColors.bgColor,
          toolbarHeight: 90,
          titleSpacing: 40,
          elevation: 0,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Portfolio',
                style: AppTextStyles.headerTextStyle(color: AppColors.white),
              ),
              Spacer(),
              SizedBox(
                height: 30,
                child: ListView.separated(
                  itemCount: _homeController.menuItems.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Obx(
                      () => InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(100),
                        onHover: (value) {
                          if (value) {
                            _homeController.menuIndex.value = index;
                          } else {
                            _homeController.menuIndex.value = 0;
                          }
                        },
                        child: buildNavAnimatedContainer(
                            index,
                            _homeController.menuIndex.value == index
                                ? true
                                : false),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      Constants.sizedBox(height: 8),
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
              // left: size.width * 0.1,
              // right: size.width * 0.1,
              top: size.height * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 30, horizontal: size.width * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeInDown(
                          duration: const Duration(milliseconds: 1200),
                          child: Text(
                            "Hello, It\'s Me",
                            style: AppTextStyles.montserratStyle(
                                color: AppColors.white),
                          ),
                        ),
                        Constants.sizedBox(height: 15),
                        FadeInRight(
                          duration: const Duration(milliseconds: 1400),
                          child: Text(
                            "Md Limon Islam",
                            style: AppTextStyles.headingStyles(),
                          ),
                        ),
                        Constants.sizedBox(height: 15),
                        FadeInLeft(
                          duration: const Duration(milliseconds: 1400),
                          child: Row(
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
                        ),
                        Constants.sizedBox(height: 15),
                        FadeInDown(
                          duration: const Duration(milliseconds: 1600),
                          child: SizedBox(
                            width: size.width * 0.3,
                            child: Text(
                              'In publishing and graphic design, Lorem ipsum is a placeholder '
                              'text commonly used to demonstrate the visual form of a document'
                              ' or a typeface without relying on meaningful content. ',
                              style: AppTextStyles.normalStyle(),
                            ),
                          ),
                        ),
                        Constants.sizedBox(height: 15),
                        FadeInDown(
                            duration: const Duration(milliseconds: 1600),
                            child: SizedBox(
                              height: 48,
                              child: ListView.separated(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Obx(
                                      () => InkWell(
                                        onTap: () {},
                                        onHover: (value) {
                                          if (value) {
                                            _homeController.socialBI.value =
                                                index;
                                          } else {
                                            _homeController.socialBI.value ==
                                                null;
                                          }
                                        },
                                        borderRadius:
                                            BorderRadius.circular(550.0),
                                        hoverColor: AppColors.themeColor,
                                        splashColor: AppColors.lawGreen,
                                        child: buildSocialButton(
                                            image: _homeController
                                                .socialButtons[index],
                                            hover: _homeController.socialBI ==
                                                    index
                                                ? true
                                                : false),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                  itemCount:
                                      _homeController.socialButtons.length),
                            )),
                        Constants.sizedBox(height: 15),
                        FadeInUp(
                            duration: const Duration(milliseconds: 1800),
                            child: AppButtons.buildMaterialButton(
                                buttonName: 'Download CV', onTap: () {}))
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    //<---- profile animation controller ----->
                    const ProfileAnimation()
                  ],
                ),
              ),
              const SizedBox(
                height: 220,
              ),

              //<------ about me -------
              const AboutMeScreen(),

              //<------ my services -------
              MyServiceScreen(),
              //<------ my protfolio -------
              MyPortfolio(),
              //<------ contact us -------
              ContactUsScreen(),
              FooterClass(),
              Constants.sizedBox(height: 50)
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

  Ink buildSocialButton({required String image, required bool hover}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          color: AppColors.bgColor,
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.themeColor, width: 2.0)),
      padding: const EdgeInsets.all(6),
      child: Image.asset(
        image,
        height: 12,
        width: 10,
        color: hover ? AppColors.bgColor : AppColors.themeColor,
        fit: BoxFit.fill,
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

  buildNavAnimatedContainer(var index, bool hover) {
    return AnimatedContainer(
      alignment: Alignment.center,
      width: hover ? 80 : 75,
      transform: hover ? _homeController.onMenuHover : null,
      duration: const Duration(milliseconds: 200),
      child: Text(
        _homeController.menuItems[index],
        style: AppTextStyles.headerTextStyle(
            color: hover ? AppColors.themeColor : AppColors.white),
      ),
    );
  }
}
