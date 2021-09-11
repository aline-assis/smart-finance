import 'package:flutter/material.dart';
import 'package:smart_finance/componets/saldo_total.dart';
import 'package:smart_finance/models/saldo.dart';

import 'componets/gasto_mes.dart';
//import 'package:smart_finance/componets/saldo_disponivel.dart';

void main() {
  runApp(SaldoDisponivel());
}

class SaldoDisponivel extends StatefulWidget {
  SaldoDisponivel({Key? key}) : super(key: key);

  @override
  _SaldoDisponivelState createState() => _SaldoDisponivelState();
}

class _SaldoDisponivelState extends State<SaldoDisponivel> {
  List<String> meuAssets = [
    "assets/images/nubank.png",
    "assets/images/bradesco3.png",
    "assets/images/inter.png"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.deepPurpleAccent[200],
            actions: [
              SaldoTotal([
                Saldo(
                    saldoNubank: 800.0,
                    saldoItau: 2300.00,
                    saldoBradesco: 1000.0),
                Saldo(
                    saldoNubank: 800.0,
                    saldoItau: 2300.00,
                    saldoBradesco: 15600.0),
              ]),
            ],
            leading: NavTeste()),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.deepPurpleAccent[200],
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Saldo Disponível',
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                        "assets/images/saldo.png",
                      ))),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: meuAssets.length,
                    itemBuilder: (ctx, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 10),
                        child: Container(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Image(
                                  alignment: Alignment.bottomLeft,
                                  image: AssetImage(
                                    meuAssets[index],
                                  ),
                                ),
                              ),
                              Text('Saldo: R\$\800,00',
                                  style: TextStyle(fontSize: 17)),
                            ],
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}

class NavTeste extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.only(left: 10),
      alignment: Alignment.topLeft,
      icon: Icon(Icons.west),
      onPressed: () {
        print("Clicked");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GastoMensal()),
        );
      },
    );
  }
}
