import 'package:flutter/material.dart';

void main(){
  runApp(MyApp7());
}
class MyApp7 extends StatelessWidget {
  const MyApp7({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MappingList(),
    );
  }
}

class MappingList extends StatefulWidget {
  const MappingList({super.key});

  @override
  State<MappingList> createState() => _MappingListState();
}

class _MappingListState extends State<MappingList> {
  var arrData = [
    {'Name':'Avinash',
  'Mob':'9234705483',
  'unread':'5'
  },
{'Name':'Aashish',
'Mob':'9234705483',
'unread':'7'
},
    {'Name':'Amit',
      'Mob':'9234705483',
      'unread':'10'
    },
    {'Name':'Bishnu',
      'Mob':'9234705483',
      'unread':'6'
    },
    {'Name':'Satyam',
      'Mob':'9234705483',
      'unread':'2'
    },
    {'Name':'Vivek',
      'Mob':'9234705483',
      'unread':'89'
    },
    {'Name':'Vikash',
      'Mob':'9234705483',
      'unread':'12'
    },
    {'Name':'Gaurav',
      'Mob':'9234705483',
      'unread':'20'
    },
    {'Name':'Aditya',
      'Mob':'9234705483',
      'unread':'115'
    },
    {'Name':'Arkit',
      'Mob':'9234705483',
      'unread':''
    },
    {'Name':'Kashish',
      'Mob':'9234705483',
      'unread':'45'
    },
    {'Name':'Anchal',
      'Mob':'9234705483',
      'unread':'85'
    },
    {'Name':'Pinki Dii',
      'Mob':'9234705483',
      'unread':'12'
    },
    {'Name':'Rinki Dii',
      'Mob':'9234705483',
      'unread':'2'
    },
    {'Name':'Papa',
      'Mob':'9234705483',
      'unread':'1'
    },
    {'Name':'Maa',
      'Mob':'9234705483',
      'unread':'1'
    },
    {'Name':'Pintu Bhaiya',
      'Mob':'9234705483',
      'unread':'12'
    },
    {'Name':'Shubham',
      'Mob':'9234705483',
      'unread':'15'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapping_List'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      backgroundColor: Colors.green.shade100,
      body: Container(
        child: ListView(
          children: arrData.map((value) => ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text(value['Name'].toString()),
            subtitle: Text(value['Mob'].toString()),
            trailing: CircleAvatar(
                radius: 12,
                backgroundColor: Colors.green,
                child: Text(value['unread'].toString())),
          ),).toList()
        )
      )
    );
  }
}

