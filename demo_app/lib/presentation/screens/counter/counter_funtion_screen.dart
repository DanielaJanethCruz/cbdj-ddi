import 'package:flutter/material.dart';

class counterFunctionScreen extends StatefulWidget {
  const counterFunctionScreen({super.key});

  @override
  State<counterFunctionScreen> createState() => _counterFunctionScreenState();
}

class _counterFunctionScreenState extends State<counterFunctionScreen> {
  //contador
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Counter Functions"),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          // backgroundColor: Colors.greenAccent,
          actions: [
            IconButton(
              icon: Icon(Icons.person_2_rounded),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.menu_open),
              onPressed: () {},
            )
          ],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter',
                style: const TextStyle(
                    fontSize: 160, fontWeight: FontWeight.w100)),
            Text(
              '${clickCounter == 1 ? 'clic' : 'clics'}',
              style: const TextStyle(fontSize: 25),
            )
          ],
        )),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                clickCounter=0;
                setState(() {});
                ;
              },
              child: const Icon(Icons.refresh_outlined),
            ),
            const SizedBox(height: 10,),
            FloatingActionButton(
              onPressed: () {
                clickCounter--;
                setState(() {});
                ;
              },
              child: const Icon(Icons.exposure_minus_1),
            ),
            const SizedBox(height: 10,),
            FloatingActionButton(
              onPressed: () {
                clickCounter++;
                setState(() {});
                ;
              },
              child: const Icon(Icons.exposure_plus_1),
            ),
          ],
        ));
  }
}
