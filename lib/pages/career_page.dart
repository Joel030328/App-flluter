import 'package:flutter/material.dart';

class CareerPage extends StatefulWidget {
  const CareerPage({super.key});

  @override
  State<CareerPage> createState() => _CareerPageState();
}

class _CareerPageState extends State<CareerPage> {
  double _valorSlider=100.0;
  bool _bloquearSlider=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Career'),
      ),
       body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(children: [
          _crearCard1(),
          _crearSlider(),
          Expanded(child: _crearImagen(),
          ),
        ]),
      ),
       
    );
  }
 Widget _crearCard1(){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children:[
          ListTile(
            leading: Icon(Icons.school,color: Color.fromARGB(255, 4, 0, 7),),
            title: Text('Educacion:'),
            subtitle: Text('Escuelas de procedencia :                             Primaria : Alfredo V. Bonfil                             Secundaria: Enrique C. Rebsamen                            Preparatoria: CETIS 142                               Ademas actualmente me encuentro cursando la carrera de tecnologias de la informacion area de desarrollo de software multiplataforma en la                                  Universidad Tecnológica de San juan del Rio'),
            
          ),
        ],
        ),
    );
   }
   Widget _crearSlider(){
    return Slider(
      onChanged: ((_bloquearSlider) ? null :(value){
       setState(() {
          _valorSlider =value;
       });
      
      }),    
       activeColor: Color.fromARGB(255, 0, 2, 15),
      label:'tamaño de la imagen',
      value:_valorSlider,
      min: 10.0,
      max: 400.0,
      
      );
   }
    Widget _crearImagen(){
    return Image(
      color: Colors.black,
      width: _valorSlider,
      image: NetworkImage('https://www.utsjr.edu.mx/build/img/logos/logo_blanco.png'),
      fit:BoxFit.contain,
    );
   }
}