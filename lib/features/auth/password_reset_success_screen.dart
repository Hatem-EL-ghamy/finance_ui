import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/core/widgets/primay_button_widget.dart';

class PasswordResetSuccessScreen extends StatelessWidget {
  const PasswordResetSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeightSpace(250),
              const Center(
                child: Image(
                  image: AssetImage('assets/images/Successmark (1).png'),
                ),
              ),
              const HeightSpace(35),
              Center(
                child: SizedBox(
                  width: 280.w,
                  child: Center(
                    child: Text(
                      "Password Changed !",
                      style: AppStyles.primaryHeadLinesStyle,
                    ),
                  ),
                ),
              ),
              const HeightSpace(15),
              Center(
                child: SizedBox(
                  child: Center(
                    child: Text(
                      " Your password has been changed ",
                      style: AppStyles.subtitlesStyles,
                    ),
                  ),
                ),
              ),
              const HeightSpace(40),
              PrimayButtonWidget(
                buttonText: "Back to Login",
                onPress: () {
                  // if (formKey.currentState!.validate()) {
                  GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
                  // }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
