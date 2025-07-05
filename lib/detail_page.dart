import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade300,
      ),
      body: Hero(tag: 'background', child: Image.asset('assets/images/Flutter.png')),
    );
  }
}
