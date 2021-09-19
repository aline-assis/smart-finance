import 'package:flutter/material.dart';
import 'package:smart_finance/componets/app_drawer.dart';
import 'package:smart_finance/screens/fatura_screen.dart';
import 'package:smart_finance/screens/saldo_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.deepPurpleAccent[200],
          title: Text('Smart Finance')),
      body: Column(
        children: [
          Container(
            width: 400,
            height: 260,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/vetor.jpg",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: double.infinity,
              //height: 300,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.green[200],
                            child: Card(
                              color: Colors.green[200],
                              child: GridTile(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed(
                                      SaldoScreen.routeName,
                                    );
                                  },
                                  child: Image(
                                    image: AssetImage(
                                      "assets/images/saldo.png",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                footer: GridTileBar(
                                  title: Text(
                                    'SALDO DO MÊS',
                                    textAlign: TextAlign.center,
                                  ),
                                  backgroundColor: Colors.black12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.indigo[200],
                            child: Card(
                              color: Colors.indigo[200],
                              child: GridTile(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed(
                                      SaldoScreen.routeName,
                                    );
                                  },
                                  child: Image(
                                    image: AssetImage(
                                      "assets/images/invoice.png",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                footer: GridTileBar(
                                  title: Text(
                                    'FATURA MENSAL',
                                    textAlign: TextAlign.center,
                                  ),
                                  backgroundColor: Colors.black12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: AppDrawer(),
    );
  }
}
