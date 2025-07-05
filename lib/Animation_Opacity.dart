import 'package:animation_journey/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp2());
}
class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Animation Opacity",
      debugShowCheckedModeBanner: false,

      home: AnimationOpacity(),
    );
  }
}

class AnimationOpacity extends StatefulWidget {
  const AnimationOpacity({super.key});

  @override
  State<AnimationOpacity> createState() => _AnimationOpacityState();
}

class _AnimationOpacityState extends State<AnimationOpacity> {

  var myOpacity = 1.0;
  bool isVisible = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Opacity'),
        backgroundColor: Colors.pink.shade200,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(opacity: myOpacity, duration: Duration(seconds: 1),
            curve: Curves.decelerate,
            child: Container(
              width: 200,
              height: 100,
              color: Colors.green,
            ),),
            ElevatedButton(onPressed: (){
              setState(() {
                if(isVisible){
                  myOpacity = 0.0;
                  isVisible = false;
                }else{
                  myOpacity = 1.0;
                  isVisible = true;

                }

              });
            }, child: Text('Close'))
          ],

        ),
      ),
    );
  }
}
