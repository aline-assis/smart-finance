import 'package:flutter/material.dart';
import 'package:smart_finance/main.dart';

void main() {
  runApp(GastoMensal());
}

class GastoMensal extends StatelessWidget {
  const GastoMensal({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.deepPurpleAccent[200],
            toolbarHeight: 250,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 30),
                Text('Saldo: R\$\4100,00', style: TextStyle(fontSize: 17)),
                Container(
                  //Deixou com atributo de flex
                  padding: EdgeInsets.only(top: 110),
                  margin: EdgeInsets.all(0),
                  width: double.infinity,
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    children: [
                      Text('Gasto do Mes', style: TextStyle(fontSize: 25)),
                      Container(
                        margin: EdgeInsets.all(25),
                        width: 50,
                        height: 50,
                        child: Image(
                          //alignment: Alignment.bottomLeft,
                          alignment: Alignment.bottomLeft,
                          image: AssetImage(
                            "assets/images/invoice.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //title: Text('Saldo disponível'),
            leading: NavBack()),
        body: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image(
                  alignment: Alignment.bottomLeft,
                  image: AssetImage(
                    "assets/images/nubank.png",
                  ),
                ),
              ),
              title: Text('Saldo: R\$\800,00', style: TextStyle(fontSize: 17)),
              //subtitle: Text('mes'), // posso usar para mostrar o mes
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image(
                  alignment: Alignment.bottomLeft,
                  image: AssetImage(
                    "assets/images/bradesco3.png",
                  ),
                ),
              ),
              title: Text('Saldo: R\$\1000,00', style: TextStyle(fontSize: 17)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image(
                  alignment: Alignment.bottomLeft,
                  image: AssetImage(
                    "assets/images/inter.png",
                  ),
                ),
              ),
              title: Text('Saldo: R\$\2300,00', style: TextStyle(fontSize: 17)),
            ),
          ],
        ),
      ),
    );
  }
}

class NavBack extends StatelessWidget {
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
          MaterialPageRoute(builder: (context) => SaldoDisponivel()),
        );
      },
    );
  }
}
