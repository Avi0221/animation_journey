import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp5());
}

class MyApp5 extends StatelessWidget {
  const MyApp5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: listView(),
    );
  }
}
class listView extends StatefulWidget {


  const listView({super.key});

  @override
  State<listView> createState() => _listViewState();
}

class _listViewState extends State<listView> {

  var arrIndex = [1,2,3,4,5,6,7,8,9,10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListWheel ScrollView'),
        backgroundColor: Colors.orange.shade300,
        centerTitle: true,
      ),
      body: ListWheelScrollView(
          itemExtent:200,
          children: arrIndex.map((value) => Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              child: Center(child: Text('$value',style: TextStyle(fontSize: 25,color: Colors.white),)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                color: Colors.orange,
              ),

              width: double.infinity,

            ),
          ),).toList()),
    );
  }
}
