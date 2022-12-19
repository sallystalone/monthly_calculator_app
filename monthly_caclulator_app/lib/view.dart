// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
              title: const Text('CuzdanApp'),
              leading: const Icon(Icons.wallet),
              shadowColor: Colors.grey,
              elevation: 20,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              backgroundColor: Colors.red[700]),
          body: Container(
            child: Column(
              children: [
                Padding(
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
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text('Gider Ekle'),
                        style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 255, 19, 2), shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))))),
                  ]),
                ),
                TextInput(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextInput extends StatelessWidget {
  const TextInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                keyboardType: TextInputType.number,
                maxLines: 3,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            );
          }),
    );
  }
}
