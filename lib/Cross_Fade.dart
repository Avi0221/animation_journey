
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp3());
}
class MyApp3 extends StatelessWidget {
  const MyApp3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Animation Opacity",
      debugShowCheckedModeBanner: false,

      home: crossfade(),
    );
  }
}

class crossfade extends StatefulWidget {
  const crossfade({super.key});

  @override
  State<crossfade> createState() => _crossfadeState();
}

class _crossfadeState extends State<crossfade> {

  bool isFirst = true;
  void reload(){
    setState(() {
      isFirst = false;
    });
  }


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
            AnimatedCrossFade(firstChild: Container(
              width: 200,
              height: 100,
              color: Colors.pink.shade900,
            ), secondChild: Image.asset('assets/images/menB.png',width: 200,height: 200,),
                crossFadeState:isFirst? CrossFadeState.showFirst :CrossFadeState.showSecond , duration:Duration(seconds: 1)),
            ElevatedButton(onPressed: (){
              reload();
            }, child:Text('Show')),
          ],
        ),
      )


    );
  }
}
