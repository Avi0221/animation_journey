import 'package:flutter/material.dart';

void main(){
  runApp(MyApp8());
}


class MyApp8 extends StatelessWidget {
  const MyApp8({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TweenAnimation(),
    );
  }
}



class TweenAnimation extends StatefulWidget {
  const TweenAnimation({super.key});

  @override
  State<TweenAnimation> createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation> with SingleTickerProviderStateMixin {
  late Animation animation;
  late Animation colorAnimation;
  late AnimationController animationController;


  @override
  void initState() {

    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 4));
    animation = Tween(begin: 200.0,end: 0.0).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.lightBlue,end: Colors.green.shade100).animate(animationController);

    animationController.addListener((){
      print(animation.value);
      setState(() {

      });

    });

    animationController.forward();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tween Animation'),
        backgroundColor: Colors.green.shade300,
        centerTitle: true,
      ),
      backgroundColor: Colors.green.shade100,
      body: Center(
        child: Container(
          width: animation.value,
          height: animation.value,
          color: colorAnimation.value ,
        ),
      ),

    );
  }
}
