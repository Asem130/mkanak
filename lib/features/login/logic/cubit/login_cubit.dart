import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mkanak/core/helpers/constants.dart';
import 'package:mkanak/core/helpers/shared_pref_helper.dart';
import 'package:mkanak/core/networks/dio_factory.dart';
import 'package:mkanak/features/login/data/models/login_request_body_model.dart';
import 'package:mkanak/features/login/data/repos/login_repo.dart';
import 'package:mkanak/features/login/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginRepo) : super(LoginState.initial());
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final LoginRepo _loginRepo;
  void emitLoginStates() async {
    emit(const LoginState.loginLoding());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(success: (loginResponse) async {
      // await saveUserToken(loginResponse.userData?.token ?? '');
      emit(LoginState.loginSuccess(loginResponse));
    }, failure: (apiErrorModel) {
      emit(LoginState.loginError(apiErrorModel));
    });
  }

  // Future<void> saveUserToken(String token) async {
  //   await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
  //   DioFactory.setTokenIntoHeaderAfterLogin(token);
  // }
}
