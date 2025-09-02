import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_request.freezed.dart';
part 'auth_request.g.dart';

@freezed
abstract class AuthRequest with _$AuthRequest {
  const factory AuthRequest({
    String? name,
    required String email,
    required String password,
    String? token,
  }) = _AuthRequest;

  factory AuthRequest.fromJson(Map<String, Object?> json) =>
      _$AuthRequestFromJson(json);
  
}
