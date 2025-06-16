import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/core/widgets/custom_text_field.dart';
import 'package:finance_ui/core/widgets/back_button_widget.dart';
import 'package:finance_ui/core/widgets/primay_button_widget.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

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
                    "Create new password",
                    style: AppStyles.primaryHeadLinesStyle,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Your new password must be unique from those previously used.",
                    style: AppStyles.subtitlesStyles,
                  ),
                ),
                const HeightSpace(35),
                const CustomTextField(
                  hintText: "New Password",
                ),
                const HeightSpace(15),
                const CustomTextField(
                  hintText: "Confirm Password",
                ),
                const HeightSpace(38),
                PrimayButtonWidget(
                  buttonText: "Reset Password",
                  onPress: () {
                    GoRouter.of(context)
                        .pushNamed(AppRoutes.passwordResetSuccessScreen);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
