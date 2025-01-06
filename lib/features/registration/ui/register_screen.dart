import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mkanak/core/helpers/space_vector.dart';
import 'package:mkanak/core/themes/color_manger.dart';
import 'package:mkanak/core/themes/text_styles.dart';
import 'package:mkanak/core/widgets/app_text_button.dart';
import 'package:mkanak/features/registration/logic/cubit/registration_cubit.dart';
import 'package:mkanak/features/registration/ui/widgets/already_have_account.dart';
import 'package:mkanak/features/registration/ui/widgets/register_bloc_listener.dart';
import 'package:mkanak/features/registration/ui/widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsManager.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/2.png',
                    width: double.infinity,
                    height: 200.h,
                  ),
                ),
                Text(
                  'Create an Account',
                  style: TextStyles.font32BlueBold,
                ),
                verticalSpace(8),
                Text('Unlock a worl of travel \nwith one account across Mkanak',
                    style: TextStyles.font12WhiteMedium),
                verticalSpace(20),
                RegisterForm(),
                verticalSpace(20),
                AppTextButton(
                  buttonHeight: 50,
                  buttonText: 'Go',
                  onPressed: () {
                    validateThenDoRegister(context);
                  },
                  textStyle: TextStyles.font16WhiteMedium
                      .copyWith(color: Colors.white),
                ),
                verticalSpace(10),
                AlreadyHaveAccountText(),
                RegisterBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoRegister(BuildContext context) {
    if (context.read<RegistrationCubit>().formKey.currentState!.validate()) {
      context.read<RegistrationCubit>().emitRegisterStates();
    }
  }
}
