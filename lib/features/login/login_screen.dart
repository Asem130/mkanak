import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mkanak/core/helpers/space_vector.dart';
import 'package:mkanak/core/themes/text_styles.dart';
import 'package:mkanak/features/login/logic/cubit/login_cubit.dart';
import 'package:mkanak/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:mkanak/features/login/ui/widgets/email_and_password.dart';
import 'package:mkanak/features/login/ui/widgets/login_bloc_listener.dart';

import '../../core/widgets/app_text_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait \nto see what you\'ve been up to since you\nlast logged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const EmailAndPassword(),
                    verticalSpace(24),
                    Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font13BlueRegular,
                        )),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: 'Login',
                      textStyle: TextStyles.font16WhiteMedium,
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
                    ),
                    verticalSpace(16),
                    const DontHaveAccountText(),
                    const LoginBlocListener()
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void validateThenDoLogin(BuildContext context) {
  if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    context.read<LoginCubit>().emitLoginStates();
  }
}
