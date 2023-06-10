import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/Utils/app_button.dart';
import 'package:personal_portfolio/Utils/app_color.dart';
import 'package:personal_portfolio/Utils/app_image.dart';
import 'package:personal_portfolio/Utils/constants.dart';
import 'package:personal_portfolio/conttroller/my_service_controller.dart';

import '../../Utils/app_text_style.dart';

class MyServiceScreen extends StatelessWidget {
  MyServiceScreen({super.key});

  final _myServiceController = Get.put(MyServiceController());

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: AppColors.bgColor,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 12),
      child: Column(
        children: [
          FadeInDown(
              duration: const Duration(milliseconds: 1200),
              child: RichText(
                text: TextSpan(
                    text: 'My ',
                    style: AppTextStyles.headingStyles(fontSize: 30),
                    children: [
                      TextSpan(
                        text: 'Services',
                        style: AppTextStyles.headingStyles(
                            fontSize: 30, color: AppColors.robinEdgeBlue),
                      )
                    ]),
              )),
          Constants.sizedBox(height: 40),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    _myServiceController.isApp.value = value;
                  },
                  child: buildAnimatedContainer(
                      title: 'App Development',
                      image: AppsImage.code,
                      hover: _myServiceController.isApp.value),
                ),
                Constants.sizedBox(width: 10),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    _myServiceController.isGraphic.value = value;
                  },
                  child: buildAnimatedContainer(
                      title: 'Graphic Designing',
                      image: AppsImage.brush,
                      hover: _myServiceController.isGraphic.value),
                ),
                Constants.sizedBox(width: 10),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    _myServiceController.isDataAnalyst.value = value;
                  },
                  child: buildAnimatedContainer(
                      title: 'Digital Marketing',
                      image: AppsImage.analyst,
                      hover: _myServiceController.isDataAnalyst.value),
                )
              ],
            ),
          )
        ],
      ),
    );
 
 
  }

  buildAnimatedContainer(
      {required String title, required String image, required bool hover}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      width: hover ? 360 : 340,
      height: hover ? 440 : 430,
      alignment: Alignment.center,
      transform: hover
          ? _myServiceController.onHoverActive
          : _myServiceController.onHoverRemove,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 24),
      decoration: BoxDecoration(
          color: AppColors.bgColor2,
          borderRadius: BorderRadius.circular(30),
          border:
              hover ? Border.all(color: AppColors.themeColor, width: 3) : null,
          boxShadow: const [
            BoxShadow(
                color: Colors.black54,
                spreadRadius: 4.0,
                blurRadius: 4.5,
                offset: Offset(3.0, 4.5))
          ]),
      child: Column(
        children: [
          Image.asset(
            image,
            width: 50,
            height: 50,
            color: AppColors.themeColor,
          ),
          Constants.sizedBox(height: 30),
          Text(
            title,
            style: AppTextStyles.montserratStyle(color: AppColors.white),
          ),
          Constants.sizedBox(height: 12),
          Text(
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'
            ' The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters',
            style: AppTextStyles.normalStyle(),
            textAlign: TextAlign.center,
          ),
          Constants.sizedBox(height: 40),
          AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
        ],
      ),
    );
  }
}
