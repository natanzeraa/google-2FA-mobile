import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:mobile_app/domain/models/appointment/appointment.dart';

class AppointmentsService {
  Future<List<Appointment>> getAppointments() async {
    final jsonString = await rootBundle.loadString('assets/appointments.json');

    final List<dynamic> jsonList = jsonDecode(jsonString);

    return jsonList.map((json) => Appointment.fromJson(json)).toList();
  }
}
