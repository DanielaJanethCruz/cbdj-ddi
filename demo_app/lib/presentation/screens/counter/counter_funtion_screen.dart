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
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
          Text(
            '${clickCounter == 1 ? 'clic' : 'clics'}',
            style: const TextStyle(fontSize: 25),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clickCounter++;
          setState(() {});
          ;
        },
        child: const Icon(Icons.exposure_plus_1),
      ),
    );
  }
}
