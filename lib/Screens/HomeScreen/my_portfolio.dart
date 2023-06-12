import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/Utils/app_image.dart';

import '../../Utils/app_color.dart';
import '../../Utils/app_text_style.dart';
import '../../Utils/constants.dart';
import '../../conttroller/my_service_controller.dart';

class MyPortfolio extends StatelessWidget {
  MyPortfolio({super.key});

  final _myServiceController = Get.put(MyServiceController());

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: AppColors.bgColor2,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.1),
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
          // Constants.sizedBox(height: 20),
          GridView.builder(
              itemCount: _myServiceController.image.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisExtent: 260,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 24),
              itemBuilder: (context, index) {
                return FadeInUpBig(
                  duration: const Duration(milliseconds: 1600),
                  child: InkWell(
                    onTap: () {},
                    onHover: (value) {
                      if (value) {
                        _myServiceController.hoveredIndex.value = index;
                      } else {
                        _myServiceController.hoveredIndex.value == null;
                      }
                    },
                    child: Stack(alignment: Alignment.center, children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage(
                            _myServiceController.image[index],
                          ),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Obx(
                        () => Visibility(
                          visible:
                              index == _myServiceController.hoveredIndex.value,
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            transform:
                                index == _myServiceController.hoveredIndex.value
                                    ? _myServiceController.onHoverEffect
                                    : null,
                            padding: const EdgeInsets.symmetric(
                                vertical: 14, horizontal: 16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                    colors: [
                                      AppColors.themeColor.withOpacity(1.0),
                                      AppColors.themeColor.withOpacity(0.9),
                                      AppColors.themeColor.withOpacity(0.8),
                                      AppColors.themeColor.withOpacity(0.6),
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter)),
                            child: Column(
                              children: [
                                Text(
                                  'App Development',
                                  style: AppTextStyles.montserratStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                Constants.sizedBox(height: 15),
                                Text(
                                  'It is a long established fact that a reader will be distracted by the readable ',
                                  style: AppTextStyles.normalStyle(
                                      color: Colors.black87),
                                  textAlign: TextAlign.center,
                                ),
                                Constants.sizedBox(height: 30),
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.white,
                                  child: Image.asset(
                                    AppsImage.share,
                                    width: 25,
                                    height: 25,
                                    fit: BoxFit.fill,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ]),
                  ),
                );
              })
        ],
      ),
    );

    
  }
}
