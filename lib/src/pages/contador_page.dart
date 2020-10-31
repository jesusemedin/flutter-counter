import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



// Debido a que en el home page se encuentra el StateLessWidget y no se pueden ver los cambios
// por sus propiedades
// Se creara un StatefulWidget

class ContadorPage extends StatefulWidget {
// Al crear la clase ContadorPage marca un error porque se debe implementar un metodo,
// Ya que el StatefulWidget necesita a fuerza dicho metodo
// Dicho metodo es createState

// El StatefulWidget tiene su propio concepto de createState(); y se necesita sobreescribirla
// Para eso usamos el @override

@override
// El createState al ser un metodo que solo retorna una linea, muy tranquillamente se puede usar
// Una funcion de flecha

createState() => _ContadorPageState();
  // El createState necesita retornar una nueva instancia de ContadorPageState

}

// La segunda clase que se necesita es el estado de ese StatefulWidget
// State es un estandar, y usualmente se coloca el nombre de la clase seguido del State para saber
// Que es el state que va a manejar el ContadorPage

class _ContadorPageState extends State<ContadorPage> {
// Esta es la logica y el estado interno de un StatefulWidget
// Esta clase (ContadorPageState) solo se va a utilizar en esta pagina del Contador page
// Osea, este es el estado de la clase (ContadorPage) y no sera usada afuera de la misma
// De esa manera se le coloca un guion bajo al inicio para hacerla privada, es decir, esta clase no podra ser
// Utilizada fuera de este archivo

// Se copio el widget de la home_page.dart

final _estiloTexto = new TextStyle( fontSize: 25 ); 
int _conteo = 0;


@override
  Widget build(BuildContext context) {
    // En esta ocasion retornamos el widget scaffold
    // El scaffold es lo que cubre toda la pantalla
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks:', style: _estiloTexto),
            Text( '$_conteo' , style: _estiloTexto),
          ],
        )
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon( Icons.add ), // Para agregar un icono usamos el Widget Icon y usamos la clase Icons
          onPressed: () {
            // Necesitamos decir en el onPress que cuando la variable _conteo cambia se necesita redibujar en el statefulwidget
            // Y apesar de sonar complicado, es muy sencillo solo hay que llamar un metodo, y ese metodo es el setState
            // print('Hola mundo');
            _conteo++;

            setState(() {
              
            });

          }, // Si mandamos un null al evento onPressed es equivalente a disabled = true
        ),
    );
  }
}