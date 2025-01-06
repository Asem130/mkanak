import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mkanak/features/registration/data/models/registration_request_body.dart';
import 'package:mkanak/features/registration/data/repos/registration_repo.dart';
import 'package:mkanak/features/registration/logic/cubit/registration_state.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit(this._registrationRepo)
      : super(RegistrationState.initial());
  final  formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final RegistrationRepo _registrationRepo;
  void emitRegisterStates() async {
    emit(const RegistrationState.registrationLoding());
    final response = await _registrationRepo.register(
      RegistrationRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(success: (registerResponse) {
      emit(RegistrationState.registrationSuccess(registerResponse));
    }, failure: (apiErrorModel) {
      emit(RegistrationState.registrationError(apiErrorModel));
    });
  }
}
