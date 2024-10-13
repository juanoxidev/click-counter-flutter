import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Counter Functions') ,
          // // iconos a la izquierda.
          // leading: IconButton(onPressed: () {  },  icon:  const Icon(Icons.refresh_rounded), ),
          // iconos a la derecha
          actions: [
            IconButton
            ( 
             onPressed: () {
                      setState(() {
                        clickCounter=0;
                      });
                      },  
            icon:  const Icon(Icons.refresh_rounded),
            ),
            
          ],
        ) ,
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
              // si click counter == 1 entonces mostrame click sino clicks;
              // Text(clickCounter == 1? 'Click' : 'Clicks', style: const TextStyle(fontSize: 25))
              Text('Click${clickCounter == 1?"" :"s"}', style: const TextStyle(fontSize: 25))
            ],
          ),
        ),
        floatingActionButton: 
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: 
          [
            CustomButton(
              icon: Icons.refresh_outlined,
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              }),
              const SizedBox(height: 10),
              CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
                }),
              const SizedBox(height: 10),
              
              CustomButton(
                icon:Icons.exposure_minus_1,
                onPressed: () {
                setState(() {
                  clickCounter == 0 ? clickCounter: clickCounter--;
                });
                }),
          ],
        ),
      );
  }
}

// MODULARIZACION Y REUTILIZACION DE WIDGET PERSONALIZADOS.
// extraigo el widget que cree y le paso como parametros la funcion onpress y el icon q va a tener.
class CustomButton extends StatelessWidget {

// declaramos la variable icon
  final IconData icon;
// el onpress es del tipo VoidCallback es una funcion q no va a retornar nada, 
//es opcional puede ser q la mande o no 
final VoidCallback? onPressed;

// agregamos al constructor el this.onpress y el required this.icon.
  const CustomButton({
    super.key, required this.icon, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton
        (
      // hace q el boton sea circular.
       shape: const StadiumBorder(),
       onPressed: onPressed,
       // linkeamos el parametro con el icon del buttom
        child: Icon(icon),
      //  child: const Icon(Icons.refresh_outlined),
        );
  }
}
