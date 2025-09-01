import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request.freezed.dart';
part 'login_request.g.dart';

/// Represents the payload for a login request.
///
/// This is sent to the authentication endpoint to perform login.
/// If the user has Two-Factor Authentication (2FA) enabled, the `token`
/// field must be provided and will be validated. If the user does not have
/// 2FA enabled, the request will succeed without the `token`.
///
/// @example
/// ```json
/// {
///   "email": "joaogomes@cantor.com.br",
///   "password": "JoaoGomes*2025",
///   "token": "990463"
/// }
/// ```
@freezed
class LoginRequest with _$LoginRequest {
  /// Creates a new instance of [LoginRequest].
  ///
  /// @param email The email address of the user.
  /// @param password The password of the user.
  /// @param token Optional 2FA token. Required only if the user has 2FA enabled.
  const factory LoginRequest({
    required String email,
    required String password,
    String? token,
  }) = _LoginRequest;

  /// Creates a [LoginRequest] instance from a JSON map.
  factory LoginRequest.fromJson(Map<String, Object?> json) =>
      _$LoginRequestFromJson(json);
}
