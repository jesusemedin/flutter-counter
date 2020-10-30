// Para crear esta pagina es una clase comun y corriente con la palabrea reservada class
// Pero las paginas son widgets tambien, entonces, se usa otro StatelessWidget
// Debemos acostumbranos a importar siempre los paquetes necesarios para evitar cometer errores de escritura
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

final estiloTexto = new TextStyle( fontSize: 25 ); 


// Hacemos practicamente el mismo procedimiento que en app.dart
@override
  Widget build(BuildContext context) {

    // En esta ocasion retornamos el widget scaffold
    // El scaffold es lo que cubre toda la pantalla
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks:', style: estiloTexto),
            Text('0', style: estiloTexto),
          ],
        )
        ),
    );
  }

}