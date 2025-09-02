import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_app/domain/models/user/user.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
abstract class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    required bool success,
    required int status,
    required User user,
    required String accessToken,
    required String refreshToken,
    required String message,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, Object?> json) =>
      _$AuthResponseFromJson(json);
}
