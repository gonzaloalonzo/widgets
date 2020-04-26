import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['UNO','DOS','TRES','CUATRO','CINCO'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Componentes Temporal'),
      ),
      body: ListView(
        children: _crearItemsCorta()
      ),
    );
  }

  List<Widget> _crearItems(){

    List<Widget> lista = List<Widget>();

    for (String opt in opciones) {

      final tempWidget = ListTile(
        title: Text(opt),
      );
      
      lista..add( tempWidget)
           ..add(Divider());

    }

    return lista;
  }

  List<Widget> _crearItemsCorta(){

    return opciones.map((item){

      return Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_balance_wallet),
            title: Text(item + ' !'),
            subtitle: Text('subtitulo'),
            trailing: Icon(Icons.arrow_right),
            onTap: (){},
          ),
          Divider()
        ],
      );

    }).toList();

    

  }

}