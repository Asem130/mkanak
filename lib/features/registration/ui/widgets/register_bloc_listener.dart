import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mkanak/core/helpers/extensions.dart';
import 'package:mkanak/core/networks/api_error_model.dart';
import 'package:mkanak/core/routes/routes.dart';
import 'package:mkanak/core/themes/color_manger.dart';
import 'package:mkanak/core/themes/text_styles.dart';
import 'package:mkanak/features/registration/logic/cubit/registration_cubit.dart';
import 'package:mkanak/features/registration/logic/cubit/registration_state.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegistrationCubit, RegistrationState>(
      listenWhen: (previous, current) =>
          current is RegistrationLoading ||
          current is RegistrationSuccess ||
          current is RegistrationError,
      listener: (context, state) {
        state.whenOrNull(
          registrationLoding: () {
            showDialog(
              context: context,
              builder: (context) => Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primaryAccent,
                ),
              ),
            );
          },
          registrationSuccess: (signupResponse) {
            context.pop();
            showSuccessDialog(context);
          },
          registrationError: (apiErrorModel) {
            setupErrorState(context, apiErrorModel);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Signup Successful'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Congratulations, you have signed up successfully!'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                disabledForegroundColor: Colors.grey.withValues(alpha: 0.38),
              ),
              onPressed: () {
                context.pushNamed(Routes.loginScreen);
              },
              child: const Text('Continue'),
            ),
          ],
        );
      },
    );
  }

  void setupErrorState(BuildContext context, ApiErrorModel apiErrorModel) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          apiErrorModel.error!.message ?? 'Eroor',
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.font14BlueSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
