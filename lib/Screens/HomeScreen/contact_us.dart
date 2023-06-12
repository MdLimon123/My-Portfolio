import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/Utils/app_button.dart';

import '../../Utils/app_color.dart';
import '../../Utils/app_text_style.dart';
import '../../Utils/constants.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: AppColors.bgColor,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          FadeInDown(
              duration: const Duration(milliseconds: 1200),
              child: RichText(
                text: TextSpan(
                    text: 'Contact ',
                    style: AppTextStyles.headingStyles(fontSize: 30),
                    children: [
                      TextSpan(
                        text: 'Me!',
                        style: AppTextStyles.headingStyles(
                            fontSize: 30, color: AppColors.robinEdgeBlue),
                      )
                    ]),
              )),
          Constants.sizedBox(height: 40),
          Row(
            children: [
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  elevation: 8,
                  child: TextField(
                    cursorColor: AppColors.white,
                    style: AppTextStyles.normalStyle(),
                    decoration: _buildInputDecoration(hintText: 'Full Name'),
                  ),
                ),
              ),
              Constants.sizedBox(width: 20),
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  elevation: 8,
                  child: TextField(
                    cursorColor: AppColors.white,
                    style: AppTextStyles.normalStyle(),
                    decoration:
                        _buildInputDecoration(hintText: 'Email Address'),
                  ),
                ),
              ),
            ],
          ),
          Constants.sizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  elevation: 8,
                  child: TextField(
                    cursorColor: AppColors.white,
                    style: AppTextStyles.normalStyle(),
                    decoration:
                        _buildInputDecoration(hintText: 'Mobile Number'),
                  ),
                ),
              ),
              Constants.sizedBox(width: 20),
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  elevation: 8,
                  child: TextField(
                    cursorColor: AppColors.white,
                    style: AppTextStyles.normalStyle(),
                    decoration:
                        _buildInputDecoration(hintText: 'Email Subject'),
                  ),
                ),
              ),
            ],
          ),
          Constants.sizedBox(height: 20),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: AppColors.white,
              style: AppTextStyles.normalStyle(),
              maxLines: 10,
              decoration: _buildInputDecoration(hintText: 'Your Message'),
            ),
          ),
          Constants.sizedBox(height: 20),
          AppButtons.buildMaterialButton(
              buttonName: 'Send Message', onTap: () {})
        ],
      ),
    );
  }

  _buildInputDecoration({required String hintText}) {
    return InputDecoration(
        hintText: hintText,
        helperStyle: AppTextStyles.comfortaaStyle(),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        filled: true,
        fillColor: AppColors.bgColor2,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 22, vertical: 12));
  }
}
