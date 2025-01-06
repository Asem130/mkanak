import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mkanak/core/networks/api_error_model.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loginLoding() = LoginLoading;
  const factory LoginState.loginSuccess(T data) =
      LoginSuccess<T>;
  const factory LoginState.loginError(ApiErrorModel apiErrorModel) =
      LoginError;
}
