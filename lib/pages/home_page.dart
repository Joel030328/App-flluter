import 'package:app_personal/providers/menu_provider.dart';
import 'package:app_personal/util/icon_util.dart';
import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Personal APP')),
        body: _CrearLista(),
    );
  }
  Widget _CrearLista(){
    return FutureBuilder(
      future: menuProvider.cargarOpciones(),
      initialData: [],
      builder: (BuildContext context,AsyncSnapshot<List<dynamic>> snapshot){
        return ListView(
          children: _crearItems(snapshot.data,context),
        );
      } ,
    );
  }
  //metodo para crear los items
  List<Widget> _crearItems(List<dynamic>? data,BuildContext context){
    final List<Widget> items =[];
    if(data == null){
      return[];
    }

    //recorremos la data con un ciclo 
    data.forEach((item) { 
      final itemTemp = ListTile(
        title: Text(item['texto']),
        leading: getIcon(item['icon']),
        trailing: Icon(Icons.keyboard_arrow_right,color: Colors.blue,),
        onTap: (){
          //pasar a otra pagina de forma basica 
         /* final route = MaterialPageRoute(builder: (context){
            return AlertPage();
          });
          Navigator.push(context, route);*/
          Navigator.pushNamed(context, item['ruta']);
        },
      );
      items..add(itemTemp)..add(Divider());
    });
    return items;
  }
}