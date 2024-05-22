import 'package:flutter/material.dart';


class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
      ),
       body: ListView(
      padding: EdgeInsets.all(10.0),
      children: [
        _crearCard1(),
        SizedBox(height: 70.0,),
        _crearCard2(),
        SizedBox(height: 30.0,),
        Center(child:ElevatedButton(
      child:Text('Deseas saber mi edad'),
       style : ElevatedButton.styleFrom(
         backgroundColor: Color.fromARGB(255, 70, 5, 250),
       textStyle: TextStyle(
        fontSize: 15.0,
        color: Colors.white
      )
     ),
     onPressed:(){
      _monstraralerta(context);

     }
     ,)
     ),
         
      ],
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
            leading: Icon(Icons.person,color: Color.fromARGB(141, 66, 3, 102),),
            title: Text('¿Quien soy?'),
            subtitle: Text('Mi nombre es Joel Nieto Peralta,soy originario del municipio de tequisquiapan Actualmente me encuentro cursando la carrera de Tecnologias de la informacion en el area de desarrollo de software multiplataforma'),
        
          ),
        ],
        ),
    );
   }
    Widget _crearCard2(){
    final card23 = Container(
      child: Column(
        children: [
          FadeInImage(placeholder:AssetImage('assets/images/jar-loading.gif'),
           image:AssetImage('assets/images/yo.jpg'),
           fadeInDuration: Duration(milliseconds: 220),
           height: 300.0,
           width: 250,
           fit: BoxFit.cover,
           ),
           Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Esta es una foto mia de hace un par de meses'),
          )
        
          
           
        ],
    ),
    );
     return Container(
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(30.0),
              color:Colors.white,
              boxShadow : <BoxShadow>[
                BoxShadow(
                  color:Color.fromARGB(199, 87, 7, 235),
                  blurRadius:10.0,
                  spreadRadius:2.0,
                  offset:Offset(2.0,10.0)
                )
              ]
            ),
            child: ClipRRect(borderRadius: BorderRadius.circular(30.0),
            child: card23,),
           );
    
   }
    void _monstraralerta(BuildContext context){
    showDialog(context: context,
    barrierDismissible: true,
     builder: (context){
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        title: Text('Edad'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [ Text('Mi edad es de: '),
          Text('19')
        ]
        ),
        actions: [
          TextButton(
            child: Text('cerrar'),
            onPressed:(){
            Navigator.of(context).pop();
            },
          ),
        ],
      );
     });

  }
}
  