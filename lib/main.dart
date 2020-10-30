import 'package:flutter/material.dart';

void main (){


  // Lo primero que debemos hacer es decirle a Flutter que corra la aplicacion
  // Al escribir runApp(); el cual espera un argunmento
  // Esta marca un error porque runApp(); no esta definida
  // Y obviamente no esta definida porque solo tenemos este archivo (main.dart)
  // Debemos importar un archivo para que pueda encontrar esa funcion y se defina
  // Una vez definida la funcion esta lo que espera es un widget

  runApp(new MyApp());


}


// Comenzamos declarando el widget que runApp(); solicita
// Todos los widgets son clases comunes y corrientes
// Si nosotros intentamos mandar MyApp a runApp(); y crear una nueva instancia de ella
// No va a funcionar por que la clase no es un widget y tampoco extiende de un widget y es algo que nosotros tenemos que hacer

class MyApp extends StatelessWidget {
// Debemos definir un metodo .bild a fuerza
// El metodo build es el encargado de dibujar este bloque de lego, es decir, este widget
// Al iniciar un build marca un error porque se esta extendiendo de un StatelessWidget

build(){

}


}