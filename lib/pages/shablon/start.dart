// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:shablon/pages/create.dart';

final List<String> MassName = [
  'Привет',
  'Привет',
  'Привет',
  'Привет',
  'Привет',
  'Привет',
  'Привет',
  'Привет',
  'Привет',
  'Привет',
  'Привет',
];

var colorList = [
  const Color(0xFF7986CB),
  const Color(0xFFAA00FF),
  const Color(0xFFBF360C),
  const Color(0xFFAEEA00),
  const Color(0xFFFDD835),
  const Color(0xFF7E57C2),
  const Color(0xFF2979FF),
  const Color(0xFFffad3142),
  const Color(0xFF263238),
  const Color(0xFF304FFE),
];
// ignore: library_private_types_in_public_api

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: start(),
  ));
}

// ignore: camel_case_types
class start extends StatefulWidget {
  const start({super.key});

  @override
  State<start> createState() => _startState();
}

class _startState extends State<start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'mass',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w200),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: [
            Image.network(
                'https://avatars.mds.yandex.net/i?id=202ceb62571851c187a67154adcbe5875480d2f6-7662747-images-thumbs&n=13'),
          ],
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: 10,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const create(),
                  ));
            },
            child: Container(
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 227, 222, 222),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: colorList[index],
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      color: colorList[index],
                    )
                  ]),
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 140,
                ),
                child: Center(child: Text('Название: ${MassName[index]}')),
              ),
            ),
          ),
        ));
  }
}
