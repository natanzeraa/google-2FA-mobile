import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

/// Represents the response returned after a successful login.
///
/// @example
/// ```json
/// {
///   "success": true,
///   "status": 200,
///   "user": {
///     "_id": "68b450699e657f0c5f4421ec",
///     "id": "b3e9b3c5-e023-4ba2-b66f-fe7a2126900d",
///     "name": "João Gomes",
///     "email": "joaogomes@cantor.com.br",
///     "twoFaEnabled": true
///   },
///   "accessToken": "<JWT_ACCESS_TOKEN>",
///   "refreshToken": "<JWT_REFRESH_TOKEN>",
///   "message": "Login realizado com sucesso"
/// }
/// ```
@freezed
class LoginResponse with _$LoginResponse {
  /// Creates a new instance of [LoginResponse].
  ///
  /// @param success Indicates whether the login was successful.
  /// @param status HTTP status code returned by the server.
  /// @param user Authenticated user's details.
  /// @param accessToken JWT token for authorization.
  /// @param refreshToken JWT token to refresh the access token.
  /// @param message Optional message returned by the server.
  const factory LoginResponse({
    required bool success,
    required int status,
    required User user,
    required String accessToken,
    required String refreshToken,
    required String message,
  }) = _LoginResponse;

  /// Creates a [LoginResponse] from a JSON map.
  factory LoginResponse.fromJson(Map<String, Object?> json) =>
      _$LoginResponseFromJson(json);
}

/// Represents the user information returned in a login response.
///
/// @example
/// ```json
/// {
///   "_id": "68b450699e657f0c5f4421ec",
///   "id": "b3e9b3c5-e023-4ba2-b66f-fe7a2126900d",
///   "name": "João Gomes",
///   "email": "joaogomes@cantor.com.br",
///   "twoFaEnabled": true
/// }
/// ```
@freezed
class User with _$User {
  /// Creates a new instance of [User].
  ///
  /// @param mongoId Internal MongoDB ID of the user.
  /// @param id External or app-specific UUID of the user.
  /// @param name Full name of the user.
  /// @param email Email address of the user.
  /// @param twoFaEnabled Indicates if Two-Factor Authentication is enabled.
  const factory User({
    @JsonKey(name: "_id") required String mongoId,
    required String id,
    required String name,
    required String email,
    required bool twoFaEnabled,
  }) = _User;

  /// Creates a [User] from a JSON map.
  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
