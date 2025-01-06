import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mkanak/core/helpers/extensions.dart';
import 'package:mkanak/core/networks/api_error_model.dart';
import 'package:mkanak/core/routes/routes.dart';
import 'package:mkanak/core/themes/color_manger.dart';
import 'package:mkanak/core/themes/text_styles.dart';
import 'package:mkanak/features/login/logic/cubit/login_cubit.dart';
import 'package:mkanak/features/login/logic/cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
        listenWhen: (previous, current) =>
            current is LoginLoading ||
            current is LoginSuccess ||
            current is LoginError,
        listener: (context, state) {
          state.whenOrNull(
            loginLoding: () {
              showDialog(
                context: context,
                builder: (context) => Center(
                  child: CircularProgressIndicator(
                    color: ColorsManager.mutedBrown,
                  ),
                ),
              );
            },
            loginSuccess: (loginResponse) {
              context.pop();
              context.pushNamed(Routes.homeScreen);
            },
            loginError: (error) {
              context.pop();
              setupErrorState(context, error);
            },
          );
        },
        child: const SizedBox.square());
  }

  void setupErrorState(BuildContext context, ApiErrorModel apiErrorModel) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: Icon(
          Icons.error,
          color: ColorsManager.gold,
        ),
        content: Text(
          'Erorr',
          style: TextStyles.font15DarkBlueMedium,
        ),
        actions: [
          TextButton(
              onPressed: (context.pop),
              child: Text(
                'Go it',
                style: TextStyles.font14BlueSemiBold,
              ))
        ],
      ),
    );
  }
}
