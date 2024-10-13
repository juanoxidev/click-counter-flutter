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
            FloatingActionButton
                (
              // hace q el boton sea circular.
               shape: const StadiumBorder(),
               onPressed: () {
                  // actualiza la pantalla con setState
                  setState(() {
                  // incrementa el click counter
                  clickCounter++;      
                  });
               }, 
               child: const Icon(Icons.refresh_outlined),
                ),
              
              const SizedBox(height: 10),
            
            FloatingActionButton
                (
              // hace q el boton sea circular.
               shape: const StadiumBorder(),
               onPressed: () {
                  // actualiza la pantalla con setState
                  setState(() {
                  // incrementa el click counter
                  clickCounter++;      
                  });
               }, 
               child: const Icon(Icons.plus_one),
                ),
              
              const SizedBox(height: 10),
              
              
              FloatingActionButton
                (
               shape: const StadiumBorder(),
               onPressed: () {
                  // actualiza la pantalla con setState
                  setState(() {
                  // resta el click counter
                  clickCounter--;      
                  });
               }, 
               child: const Icon(Icons.exposure_minus_1),
                ),
          ],
        ),
      );
  }
}
