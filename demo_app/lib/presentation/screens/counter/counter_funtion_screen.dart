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
              onPressed: () {
                
              },
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
        )
      ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:  [
            CustomButtom(
              icon: Icons.refresh,
              onPressed: () {
                clickCounter=0;
                setState(() {});
              },
            ),
            const SizedBox(height: 10,),
            CustomButtom(
              icon: Icons.plus_one,
              onPressed: () {
              clickCounter++;
                setState(() {});
              },
            ),
            const SizedBox(height: 10,),
            CustomButtom(
              icon: Icons.exposure_minus_1,
              onPressed: () {
                if(clickCounter<=0) return;
                clickCounter--;
                setState(() {});
              },
            ),
          ],
        ));
  }
}

class CustomButtom extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const CustomButtom(/*this.icon,*/{
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      //shape: const StadiumBorder(),
      enableFeedback: true,
      elevation: 5,
      onPressed: onPressed,
      child:Icon(icon),
    );
  }
}
