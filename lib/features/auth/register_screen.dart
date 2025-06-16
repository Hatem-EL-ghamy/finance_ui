import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/core/widgets/custom_text_field.dart';
import 'package:finance_ui/core/widgets/back_button_widget.dart';
import 'package:finance_ui/core/widgets/primay_button_widget.dart';
import 'package:finance_ui/features/auth/widgets/social_login_buttons.dart';
import 'package:finance_ui/features/auth/widgets/custom_or_login_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                    "Hello! Register to get started",
                    style: AppStyles.primaryHeadLinesStyle,
                  ),
                ),
                const HeightSpace(32),
                const CustomTextField(
                  hintText: "Username",
                ),
                const HeightSpace(15),
                const CustomTextField(
                  hintText: "Email",
                ),
                const HeightSpace(15),
                const CustomTextField(
                  hintText: "Password",
                ),
                const HeightSpace(15),
                const CustomTextField(
                  hintText: "Confirm password",
                ),
                const HeightSpace(15),
                const HeightSpace(15),
                PrimayButtonWidget(
                  buttonText: "Register",
                  onPress: () {
                    // if (formKey.currentState!.validate()) {
                    GoRouter.of(context).pushNamed(AppRoutes.onBoardingScreen);
                    // }
                  },
                ),
                const HeightSpace(35),
                const CustomOrLoginWidget(),
                const HeightSpace(22),
                const CustomSocialLoginIcons(),
                const HeightSpace(155),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: AppStyles.black15BoldStyle
                          .copyWith(color: AppColors.primaryColor),
                      children: [
                        TextSpan(
                            text: "Register Now",
                            style: AppStyles.black15BoldStyle)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
