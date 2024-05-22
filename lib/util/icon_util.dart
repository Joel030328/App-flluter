import 'package:flutter/material.dart';

//declaramos el mapa con los iconos 
final _icons =<String,IconData>{
  'person':Icons.person,
  'self_improvement':Icons.self_improvement,
  'engineering':Icons.engineering,
};

//metodo  que retorna el icono solicitado

Icon getIcon(String nombreIcono){
  return Icon(
    _icons[nombreIcono],
    color: Colors.blue,
  );
}