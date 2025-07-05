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
      home:RippleAnimation() ,
    );
  }
}
class RippleAnimation extends StatefulWidget {
  const RippleAnimation({super.key});

  @override
  State<RippleAnimation> createState() => _RippleAnimationState();
}

class _RippleAnimationState extends State<RippleAnimation> with SingleTickerProviderStateMixin {

  late Animation animation;
  late AnimationController animationController;
  var listRadius = [150.0,200.0,250.0,300.0,350.0];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController = AnimationController(vsync: this,duration: Duration(seconds: 2),lowerBound: 0.5);
    animation = Tween(begin: 2.0,end: 10.0).animate(animationController);
    
    animation.addListener((){
      setState(() {

      });
    });

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ripple Animation',style: TextStyle(fontSize: 25),),
        centerTitle: true,
        backgroundColor: Colors.orange.shade500,
      ),
      backgroundColor: Colors.orange.shade100,
      body:Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            buildmyContainer(listRadius[0]),
            buildmyContainer(listRadius[1]),
            buildmyContainer(listRadius[2]),
            buildmyContainer(listRadius[3]),
            buildmyContainer(listRadius[4]),
            Icon(Icons.add_call,size: 35,color: Colors.orange,)
          ],
        ),
      ) 
    );
  }
  Widget buildmyContainer(radius){
    return Container(
      width: radius*animationController.value,
      height: radius*animationController.value,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red.withValues(alpha: 1.0 - animationController.value),
      ),

    ) ;

  }
}
