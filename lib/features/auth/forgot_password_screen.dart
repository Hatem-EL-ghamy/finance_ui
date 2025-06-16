import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/core/widgets/custom_text_field.dart';
import 'package:finance_ui/core/widgets/back_button_widget.dart';
import 'package:finance_ui/core/widgets/primay_button_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeightSpace(12),
              const BackButtonWidget(),
              const HeightSpace(28),
              SizedBox(
                width: 280.w,
                child: Text(
                  "Forgot Password?",
                  style: AppStyles.primaryHeadLinesStyle,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  "Don't worry! It occurs. Please enter the email address linked with your account.",
                  style: AppStyles.subtitlesStyles,
                ),
              ),
              const HeightSpace(35),
              const CustomTextField(
                hintText: "Enter Your Email",
              ),
              const HeightSpace(38),
              PrimayButtonWidget(
                buttonText: "Login",
                onPress: () {
                  GoRouter.of(context).pushNamed(AppRoutes.verifyOtpScreen);
                },
              ),
              const HeightSpace(375),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Remember Password?  ",
                    style: AppStyles.black15BoldStyle
                        .copyWith(color: AppColors.primaryColor),
                    children: [
                      TextSpan(text: "Login", style: AppStyles.black15BoldStyle)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
