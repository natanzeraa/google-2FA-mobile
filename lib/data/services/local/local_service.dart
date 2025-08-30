import 'dart:convert';

import 'package:mobile_app/domain/models/customer.dart';
import 'package:flutter/services.dart';

class LocalDataService {
  List<Customer> getCustomers() {
    return [
      const Customer(
        id: '',
        name: 'Tony Stark',
        imageUrl: 'https://rstr.in/google/tripedia/TmR12QdlVTT',
      ),
      const Customer(
        id: '',
        name: 'Thor Odinson',
        imageUrl: 'https://rstr.in/google/tripedia/VJ8BXlQg8O1',
      ),
      const Customer(
        id: '',
        name: 'Nick Fury',
        imageUrl: 'https://rstr.in/google/tripedia/flm_-o1aI8e',
      ),
      const Customer(
        id: '',
        name: 'Africa',
        imageUrl: 'https://rstr.in/google/tripedia/-nzi8yFOBpF',
      ),
      const Customer(
        id: '',
        name: 'North America',
        imageUrl: 'https://rstr.in/google/tripedia/jlbgFDrSUVE',
      ),
      const Customer(
        id: '',
        name: 'Oceania',
        imageUrl: 'https://rstr.in/google/tripedia/vxyrDE-fZVL',
      ),
      const Customer(
        id: '',
        name: 'Australia',
        imageUrl: 'https://rstr.in/google/tripedia/z6vy6HeRyvZ',
      ),
    ];
  }

  // Future<List<Activity>> getActivities() async {
  //   final json = await _loadStringAsset(Assets.activities);
  //   return json.map<Activity>(Activity.fromJson).toList();
  // }

  Future<List<Map<String, dynamic>>> _loadStringAsset(String asset) async {
    final localData = await rootBundle.loadString(asset);
    return (jsonDecode(localData) as List).cast<Map<String, dynamic>>();
  }
}
