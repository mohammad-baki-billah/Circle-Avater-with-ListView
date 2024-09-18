import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var arrayName = ['Allahu', 'Rahmanu', 'Rahimu', 'Kuddusu', 'Maliku'];
  var arrayImage = [
    'person1.png',
    'person2.png',
    'person3.png',
    'person4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/boy.png'),
            ),
            trailing: Icon(Icons.add),
            title: Text(arrayName[index]), // Use the names from arrayName
            subtitle: Text('Subtitle data for ${arrayName[index]}'),
            // Dynamic subtitle
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 2,
          );
        },
        itemCount: arrayName.length,
      ),
    );
  }
}
