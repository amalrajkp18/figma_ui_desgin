import 'package:flutter/material.dart';
import 'package:ui_retry/core/utils/app_size.dart';
import 'package:ui_retry/view/pages/auth/widget/form_text_widget.dart';
import 'package:ui_retry/view/widgets/app_scaffold_widget.dart';

import '../../../core/utils/white_space.dart';
import '../../widgets/app_button_widget.dart';
import 'widget/logo_title_widget.dart';
import 'widget/sub_text_widget.dart';
import 'widget/textformfield_widget.dart';

class ScreenSignUp extends StatefulWidget {
  const ScreenSignUp({super.key});
  static const routeName = '/signup';

  @override
  State<ScreenSignUp> createState() => _ScreenSignUpState();
}

class _ScreenSignUpState extends State<ScreenSignUp> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return AppScaffoldWidget(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.width(25),
          ),
          child: Column(
            children: [
              // space
              WhiteSpace.spacer(context: context, height: 100),
              // logo and title
              const LogoTiltleWidget(),
              // spacing
              WhiteSpace.spacer(context: context, height: 60),
              // center head text
              const SubTextWidget(text: 'Sign up'),
              // spacing
              WhiteSpace.spacer(context: context, height: 30),
              // form section
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FormTextWidget(text: 'USERNAME'),
                    const TexFormFieldWidget(hintText: 'Enter your username'),
                    const FormTextWidget(text: 'EMAIL'),
                    const TexFormFieldWidget(
                      hintText: 'Enter your email',
                      textInputType: TextInputType.emailAddress,
                    ),
                    const FormTextWidget(text: 'PASSWORD'),
                    const TexFormFieldWidget(
                      hintText: 'Enter your password',
                      obsecureText: true,
                    ),
                    const FormTextWidget(text: 'CONFIRM PASSWORD'),
                    const TexFormFieldWidget(
                      hintText: 'Confirm your password',
                      obsecureText: true,
                    ),
                    const FormTextWidget(text: 'PHONE NUMBER'),
                    const TexFormFieldWidget(
                      hintText: 'Confirm your password',
                      textInputType: TextInputType.phone,
                    ),
                    // spacing
                    WhiteSpace.spacer(
                      context: context,
                      height: 30,
                    ),
                    // privacy policy section
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.black,
                          shape: const CircleBorder(),
                          value: check,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          activeColor: Colors.white,
                          onChanged: (bool? value) {
                            setState(() {
                              check = value!;
                            });
                          },
                        ),
                        const FormTextWidget(
                          text:
                              'User agrees to the terms of service and privacy policy.',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ],
                    ),
                    // spacing
                    WhiteSpace.spacer(
                      context: context,
                      height: 30,
                    ),
                    // button
                    AppButtonWidget(
                      text: 'SIGN UP',
                      onpressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
