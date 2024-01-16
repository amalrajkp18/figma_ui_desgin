import 'package:flutter/material.dart';
import 'package:ui_retry/core/color/app_color.dart';
import 'package:ui_retry/core/utils/app_size.dart';
import 'package:ui_retry/core/utils/white_space.dart';
import 'package:ui_retry/view/pages/auth/screen_signup.dart';
import 'package:ui_retry/view/pages/auth/widget/form_text_widget.dart';
import 'package:ui_retry/view/pages/auth/widget/sub_text_widget.dart';
import 'package:ui_retry/view/pages/auth/widget/textformfield_widget.dart';
import 'package:ui_retry/view/pages/dashboard/bottom_navigation/bottom_navigation_bar_widget.dart';
import 'package:ui_retry/view/widgets/app_button_widget.dart';
import 'package:ui_retry/view/widgets/app_scaffold_widget.dart';

import 'widget/logo_title_widget.dart';

class ScreenSignIn extends StatelessWidget {
  const ScreenSignIn({super.key});
  static const routeName = '/signin';
  @override
  Widget build(BuildContext context) {
    return AppScaffoldWidget(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.width(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo and title
            const LogoTiltleWidget(),
            // spacing
            WhiteSpace.spacer(context: context, height: 60),
            const SubTextWidget(text: 'Welcome to Hero\'s Journey'),
            // spacing
            WhiteSpace.spacer(context: context, height: 30),
            // form section
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FormTextWidget(text: 'USERNAME'),
                  const TexFormFieldWidget(
                      hintText: 'Enter email or username',
                      textInputType: TextInputType.emailAddress),
                  const FormTextWidget(text: 'PASSWORD'),
                  const TexFormFieldWidget(
                      hintText: 'Enter your password',
                      textInputType: TextInputType.emailAddress),
                  // text button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const FormTextWidget(
                          text: 'Remmber me',
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const FormTextWidget(
                          text: 'Forgot password',
                          color: AppColor.greenText,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  // space
                  WhiteSpace.spacer(
                    context: context,
                    height: 50,
                  ),
                  // button
                  AppButtonWidget(
                    text: 'LOGIN',
                    onpressed: () {
                      // page routing
                      Navigator.pushReplacementNamed(
                          context, BottomNavigationBarWidget.routeName);
                    },
                  ),
                  // spacer
                  WhiteSpace.spacer(context: context, height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const FormTextWidget(
                          text: 'Don\'t have an account ? ',
                          fontSize: 19,
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // page routing
                          Navigator.pushNamed(context, ScreenSignUp.routeName);
                        },
                        child: const FormTextWidget(
                          text: 'Sign up',
                          color: AppColor.greenText,
                          fontSize: 19,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
