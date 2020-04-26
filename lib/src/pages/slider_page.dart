import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider=100;
  bool _bloquearCheck= false;
  bool _bloquearSwitch = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Slider'),
       ),
       body: Container(
         padding: EdgeInsets.only(top:50.0),
         child: Column(
           children: <Widget>[
             _crearSlider(),
             _checkBox(),
             _crearSwith(),
             Expanded(
               child: _crearImagen()
               ),
           ],
         )
       ),
    );
  }

  Widget _crearSlider(){

      return  Slider(
        activeColor: Colors.indigoAccent,
        label: 'Tamaño de la imagen',
        divisions: 20,
        value: _valorSlider,
        min: 10.0,
        max: 400.0,
        onChanged:(_bloquearCheck || _bloquearSwitch)?null: (valor){
          setState(() {
            _valorSlider = valor;
          });
      }
      );
    }

    Widget _checkBox(){ 

      /* return Checkbox(
        value: _bloquearCheck,
        onChanged: (valor){
          setState(() {
            _bloquearCheck = valor;

          });
          
        }
        
        ); */

        return CheckboxListTile(
          title: Text('Bloquear Slider'),
          value: _bloquearCheck,
          onChanged: (valor){
          setState(() {
            _bloquearCheck = valor;

          });
          
        },
        );
    }

    Widget _crearSwith(){
      return  SwitchListTile(
        value:_bloquearSwitch, 
        onChanged: (valor){
          setState(() {
            _bloquearSwitch= valor;
          });
        }
         
        );

    }

    Widget _crearImagen()
      {
        return Image(
          image: NetworkImage('https://i.etsystatic.com/20198455/r/il/0c0ecb/1903158418/il_570xN.1903158418_nd5y.jpg'),
          width: _valorSlider,
          fit: BoxFit.contain,
        
        );
      }

}