import 'package:flutter/material.dart';

class Cartoes extends StatelessWidget {
  final imagesList = [
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final title = 'Cartões';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
          backgroundColor: Color(0xFF00A789),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(30),
          crossAxisSpacing: 30,
          mainAxisSpacing: 16,
          crossAxisCount: 2,
          children: List.generate(
            1,
            (index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: NetworkImage(imagesList[index]),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
