import 'package:flutter/material.dart';
import 'package:hello_wold_app/presentation/screens/counter/counter_functions_screen.dart';
// import 'package:hello_wold_app/presentation/screens/counter/counter_screen.dart';

void main (){

runApp(const MyApp());

}

// STALESS WIDGET

class MyApp extends StatelessWidget {
  // definir el constructor key es buena practica
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.amberAccent
      ),
      home: const CounterFunctionsScreen()
    );
    // el uso de const para mejorar la performace: actualmente mi app renderiza de forma estatica el texto hola mundo, el texto no va a cambiar.
    // no va a poder modificarse el componente. flutter lo va a guardar y reutilizar facilmente al definirlo const. 
  }

}