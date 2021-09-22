import 'package:flutter/cupertino.dart';

class Perfil with ChangeNotifier {
  String? id;
  String cpf;
  DateTime date;
  String banco;

  Perfil({
    this.id,
    required this.cpf,
    required this.date,
    required this.banco,
  });
}
