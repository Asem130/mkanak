import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mkanak/core/networks/api_error_model.dart';

part 'registration_state.freezed.dart';

@freezed
class RegistrationState<T> with _$RegistrationState<T> {
  const factory RegistrationState.initial() = _Initial;
  const factory RegistrationState.registrationLoding() = RegistrationLoading;
  const factory RegistrationState.registrationSuccess(T data) =
      RegistrationSuccess<T>;
  const factory RegistrationState.registrationError(
      ApiErrorModel apiErrorModel) = RegistrationError;
}
