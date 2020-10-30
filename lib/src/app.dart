import 'package:flutter/material.dart';
import 'package:contador/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
// Debemos definir un metodo .bild a fuerza
// El metodo build es el encargado de dibujar este bloque de lego, es decir, este widget
// Al iniciar un build marca un error porque se esta extendiendo de un StatelessWidget
// Y el StatelessWidget ya tiene una definicion de como debe ser el build
// Para eso se debe sobreescribir el build que ya trae el StatelessWidget
// Usamos el @override
// Apesar de usar el @override el metodo build seguira marcando un error ya que el build
// No cumple con los requisitos que son necesarios para el metodo build de un StatelessWidget

// Usamos context dentro de build. El context es como contener la informacion del arbol de widgets
// El metodo build debe retornar un widget

// Sin embargo, se pone en azul porque todavia no estamos regresando un widget

@override
Widget build( context ){
// Configuramos un widget que es el que permite una configuracion globlal de la aplicacion

return MaterialApp(
  home: Center(
    child: HomePage(),
  )
);
// MaterialApp(); una aplicacion que usa Material Desing
// Basicamente cuando ejecutamos MaterialApp, estariamos llamando a un constructor, con argumentos con nombre
// Es un widget
// MaterialApp(); recibe entre sus argumentos algo llamado home:

}


}