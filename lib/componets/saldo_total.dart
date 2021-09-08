import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_finance/models/saldo.dart';

class SaldoTotal extends StatelessWidget {
  final List<Saldo> _saldos = [];

  Teste() {
    print(_saldos);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20),
        Text(
          'Saldo: ${_saldos}',
          style: Theme.of(context).textTheme.headline6,
        ),
      ],
    );
  }
}
