import 'package:animation_journey/detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp4());
}

class MyApp4 extends StatelessWidget {
  const MyApp4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:heroAnimation() ,
    );
  }
}
class heroAnimation extends StatefulWidget {
  const heroAnimation({super.key});

  @override
  State<heroAnimation> createState() => _heroAnimationState();
}

class _heroAnimationState extends State<heroAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HERO ANIMATION'),
        backgroundColor: Colors.red.shade300,
        centerTitle: true,
      ),
      backgroundColor: Colors.red.shade50,
      body: Container(
        child: Center(
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(),));
            },

              child: Hero(tag: 'background', child: Image.asset('assets/images/Flutter.png'))),
        ),
      ),

    );
  }
}
