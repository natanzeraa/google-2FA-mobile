import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:mobile_app/domain/models/appointment/appointment.dart';
import 'package:mobile_app/domain/models/user/user.dart';

class Assets {
  static const appointments = 'assets/appointmens.json';
}

class LocalDataService {
  Future<List<Appointment>> getAppointments() async {
    final json = await _loadStringAsset(Assets.appointments);
    return json.map<Appointment>(Appointment.fromJson).toList();
  }

  List<User> getUser() {
    return [
      const User(
        id: '1',
        name: 'Peter Parker',
        email: 'contact@spiderman.com',
        password: 'l@veSpiders',
        twoFaEnabled: false,
      ),
    ];
  }

  Future<List<Map<String, dynamic>>> _loadStringAsset(String asset) async {
    final localData = await rootBundle.loadString(asset);
    return (jsonDecode(localData) as List).cast<Map<String, dynamic>>();
  }
}
