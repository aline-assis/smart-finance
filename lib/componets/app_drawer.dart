import 'package:flutter/material.dart';
import 'package:smart_finance/screens/saldo_screen.dart';

import '../screens/fatura_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            elevation: 0,
            backgroundColor: Colors.deepPurpleAccent[200],
            title: Text('Menu'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image(
                image: AssetImage(
                  "assets/images/home.png",
                ),
              ),
            ),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image(
                image: AssetImage(
                  "assets/images/invoice.png",
                ),
              ),
            ),
            title: Text('Fatura'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(FaturaMensalScreen.routeName);
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image(
                image: AssetImage(
                  "assets/images/saldo.png",
                ),
              ),
            ),
            title: Text('Saldo'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(SaldoScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
