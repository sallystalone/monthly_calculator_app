import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text('CuzdanApp'),
            leading: const Icon(Icons.wallet),
            shadowColor: Colors.grey,
            elevation: 20,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
            backgroundColor: Colors.red[700]),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Gelir Ekle'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 19, 2),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                ),
              ),
              Container(
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Gider Ekle'),
                    style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 255, 19, 2), shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))))),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
