import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _width = 200.0;
  var _Height = 100.0;

  bool flag = true;
  Decoration myDecor =  BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.blueAccent,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Animation'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(duration: Duration(seconds: 2),
            curve: Curves.bounceOut,
            width:_width ,
            height: _Height,
            decoration: myDecor,

            ),
            ElevatedButton(onPressed: (){
              setState(() {
                if(flag){
                  _width = 100.0;
                  _Height = 200.0;
                  myDecor = BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    color: Colors.green,
                  );
                  flag = false;

                }
                else{
                  flag = true;
                  _Height = 100.0;
                  _width = 200.0;
                  myDecor = BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.blueAccent
                  );
                }
              });
            }, child: Text('Animate'))
          ],
        ),
      ),
    );
  }
}



