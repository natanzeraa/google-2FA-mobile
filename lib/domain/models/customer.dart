import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer.freezed.dart'; // necessário para o código gerado
part 'customer.g.dart'; // só precisa se for usar JSON

@freezed
abstract class Customer with _$Customer {
  const factory Customer({
    required String id,
    required String name,
    int? age,
    String? imageUrl,
  }) = _Customer;

  // opcional (se for trabalhar com JSON)
  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}
