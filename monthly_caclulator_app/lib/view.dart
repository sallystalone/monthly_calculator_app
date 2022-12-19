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
        FocusScope.of(context).requestFocus(FocusNode());
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
                      onPressed: () {
                        showDia(context);
                      },
                      child: const Text('Gelir Ekle'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 19, 2),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          showDiaGider(context);
                        },
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
                cursorColor: Colors.black,
                keyboardType: TextInputType.number,
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: "Yessir",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
            );
          }),
    );
  }
}

void showDia(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          // ignore: prefer_const_literals_to_create_immutables
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.add_circle_outline,
              color: Colors.green,
              size: 25,
            ),
            const SizedBox(width: 5),
            (const Text(
              'Gelir Ekle',
            )),
          ]),
          content: Container(
            height: 160,
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Gelir adı",
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25)), borderSide: BorderSide(color: Colors.black)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              SizedBox(height: 40),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25)), borderSide: BorderSide(color: Colors.black)),
                    hintText: "Gelir miktari",
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.red), borderRadius: BorderRadius.all(Radius.circular(20)))),
              )
            ]),
          ),
          actions: [
            TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("İptal")),
            addButton,
          ],
        );
      });
}

Widget addButton = ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Color.fromARGB(255, 255, 19, 2),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
  ),
  child: Text("Ekle"),
  onPressed: () {},
);

void showDiaGider(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          // ignore: prefer_const_literals_to_create_immutables
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.dangerous_rounded, color: Colors.red, size: 25),
            const SizedBox(width: 5),
            (const Text(
              'Gider Ekle',
            )),
          ]),
          content: Container(
            height: 160,
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Gider adı",
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25)), borderSide: BorderSide(color: Colors.black)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              SizedBox(height: 40),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25)), borderSide: BorderSide(color: Colors.black)),
                    hintText: "Gider miktari",
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.red), borderRadius: BorderRadius.all(Radius.circular(20)))),
              )
            ]),
          ),
          actions: [
            TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("İptal")),
            deleteButton,
          ],
        );
      });
}

Widget deleteButton = ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Color.fromARGB(255, 255, 19, 2),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
  ),
  child: Text("Ekle"),
  onPressed: () {},
);
