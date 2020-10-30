// Importaciones de paquetes
import 'package:flutter/material.dart';

// Importanciones que escribimos
// Existen varias formas de importar nuestros archivos
// Manera mas lenta
import 'src/app.dart';
// Manera mas rapida
// La forma mas rapida de hacerlo es con un quick fix que sugiere
// El editor (ctrl + .)


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