import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:proj/cls.dart';
import 'package:proj/notes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => Notes())));
          },
          child: Icon(Icons.add),
        ),
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text('Notes'),
        ),
        body: Container(
          child: ListView.builder(
              itemCount: Notelist.note.length,
              itemBuilder: (context, index) {
                return Card(
                  shape: Border.all(style: BorderStyle.solid),
                  margin: EdgeInsets.all(5.0),
                  color: Colors.amber,
                  elevation: 50,
                  child: ListTile(
                    leading: Text(
                      Notelist.note[index]['time'].toString(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            Notelist.note.removeAt(index);
                          });
                        },
                        icon: Icon(Icons.delete)),
                    title: Text(
                      Notelist.note[index]['id'] as String,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    subtitle: Text(
                      Notelist.note[index]['Details'].toString(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                );
              }),
        ));
  }
}
