import 'package:flutter/material.dart';

void main(){
  runApp(MyApp6());
}


class MyApp6 extends StatelessWidget {
  const MyApp6({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: clipRRect(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class clipRRect extends StatefulWidget {
  const clipRRect ({super.key});

  @override
  State<clipRRect> createState() => _clipRRectState();
}

class _clipRRectState extends State<clipRRect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clip RRECT'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(21),bottomLeft: Radius.circular(41),topRight: Radius.circular(41)),
          child: Image.asset('assets/images/Flutter.png'
          ),
        ),
      ),
    );
  }
}
