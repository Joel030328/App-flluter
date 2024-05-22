import 'package:flutter/material.dart';

class HobbiesPage extends StatelessWidget {
  const HobbiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hobbies'),
      ),
      body: ListView(
      padding: EdgeInsets.all(10.0),
      children: [
        _crearCard1(),
        SizedBox(height: 30.0,),
        _crearCard2(),
        SizedBox(height: 30.0,),
        
         
      ],
     ),
     floatingActionButton : FloatingActionButton(
      child: Icon(Icons.west),
      onPressed: () {
        Navigator.pop(context);
      },
     )
    );

  }
  Widget _crearCard1(){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children:[
          ListTile(
            leading: Icon(Icons.sports_tennis,color: Color.fromARGB(137, 41, 152, 204),),
            title: Text('Mis hobbies'),
            subtitle: Text('Algunos de mis hobbies favoritos es escuchar musica, jugar tennis, e ir al gimnasio '),
        
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
           image:AssetImage('assets/images/sports.jpg'),
           fadeInDuration: Duration(milliseconds: 220),
           height: 300.0,
           width: 250,
           fit: BoxFit.cover,
           ),
           
        ],
    ),
    );
     return Container(
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(30.0),
              color:Colors.white,
              boxShadow : <BoxShadow>[
                BoxShadow(
                  color:Color.fromARGB(198, 50, 143, 219),
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
}