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

// ignore: library_private_types_in_public_api
const List<_MyColor> myBgColors = const <_MyColor>[
  const _MyColor(Color(0xFFFFC100), 'Orange'),
  const _MyColor(const Color(0xFF91FAFF), 'Light Blue'),
  const _MyColor(const Color(0xFF00D1FF), 'Cyan'),
  const _MyColor(const Color(0xFF00BCFF), 'Cerulean'),
  const _MyColor(const Color(0xFF009BEE), 'Blue'),
];

class _MyColor {
  const _MyColor(this.color, this.name);

  final Color color;
  final String name;
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: start(),
  ));
}

// ignore: camel_case_types
class start extends StatelessWidget {
  const start({super.key});

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
                  border: Border.all(color: Colors.black),
                  boxShadow: const[
                    BoxShadow(blurRadius: 10.0, color: Colors.red)
                  ]
                  ),
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
