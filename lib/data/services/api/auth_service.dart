import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:mobile_app/data/services/models/auth_request/auth_request.dart';
import 'package:mobile_app/data/services/models/auth_response/auth_response.dart';
import 'package:mobile_app/utils/result.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final String baseUrl;
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  String? _cachedAccessToken;
  String? _cachedRefreshToken;

  AuthService({this.baseUrl = 'http://localhost:3000/embcontab'});

  Future<Result<AuthResponse>> login(AuthRequest requestData) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/auth/login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'email': requestData.email,
          'password': requestData.password,
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final authResponse = AuthResponse.fromJson(data);

        final shared = await SharedPreferences.getInstance();
        await shared.setString('user', jsonEncode(authResponse.user.toJson()));
        await shared.setBool('twoFaEnabled', authResponse.user.twoFaEnabled);

        await _secureStorage.write(
          key: 'accessToken',
          value: authResponse.accessToken,
        );
        await _secureStorage.write(
          key: 'refreshToken',
          value: authResponse.refreshToken,
        );

        _cachedAccessToken = authResponse.accessToken;
        _cachedRefreshToken = authResponse.refreshToken;

        return Result.ok(authResponse);
      } else {
        return Result.error(
          Exception('Login failed: ${response.statusCode} ${response.body}'),
        );
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<AuthResponse>> signup(AuthRequest requestData) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/auth/signup'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'email': requestData.email,
          'password': requestData.password,
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return Result.ok(AuthResponse.fromJson(data));
      } else {
        return Result.error(
          Exception('Signup failed: ${response.statusCode} ${response.body}'),
        );
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  String? getTokenSync() => _cachedAccessToken;

  Future<void> loadToken() async {
    _cachedAccessToken = await _secureStorage.read(key: 'accessToken');
    _cachedRefreshToken = await _secureStorage.read(key: 'refreshToken');
  }
}
