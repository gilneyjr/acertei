import 'package:flutter/material.dart';

class Cartoes extends StatelessWidget {
  final imagesList = [
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg', //owl
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg', //owl2
    'https://images-na.ssl-images-amazon.com/images/I/81lo%2B7tfR2L.png', //cow
    'https://is1-ssl.mzstatic.com/image/thumb/Purple124/v4/84/3b/10/843b10e0-bf61-9b27-465b-ce4996811f29/source/512x512bb.jpg', //tiger
    'https://pbs.twimg.com/profile_images/1034121003893514241/OIoPWY3Z.jpg', //alligator
    'https://is4-ssl.mzstatic.com/image/thumb/Purple114/v4/0f/d1/3d/0fd13d2f-a09f-0453-01bc-cfe996eb628c/source/512x512bb.jpg', //horse
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg', //owl
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg', //owl2
    'https://images-na.ssl-images-amazon.com/images/I/81lo%2B7tfR2L.png', //cow
    'https://is1-ssl.mzstatic.com/image/thumb/Purple124/v4/84/3b/10/843b10e0-bf61-9b27-465b-ce4996811f29/source/512x512bb.jpg', //tiger
    'https://pbs.twimg.com/profile_images/1034121003893514241/OIoPWY3Z.jpg', //alligator
    'https://is4-ssl.mzstatic.com/image/thumb/Purple114/v4/0f/d1/3d/0fd13d2f-a09f-0453-01bc-cfe996eb628c/source/512x512bb.jpg', //horse
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg', //owl
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg', //owl2
    'https://images-na.ssl-images-amazon.com/images/I/81lo%2B7tfR2L.png', //cow
    'https://is1-ssl.mzstatic.com/image/thumb/Purple124/v4/84/3b/10/843b10e0-bf61-9b27-465b-ce4996811f29/source/512x512bb.jpg', //tiger
    'https://pbs.twimg.com/profile_images/1034121003893514241/OIoPWY3Z.jpg', //alligator
    'https://is4-ssl.mzstatic.com/image/thumb/Purple114/v4/0f/d1/3d/0fd13d2f-a09f-0453-01bc-cfe996eb628c/source/512x512bb.jpg', //horse
  ];

  @override
  Widget build(BuildContext context) {
    final title = 'Cartões';
    return Scaffold(
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
          imagesList.length,
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
    );
  }
}
