import 'package:flutter/material.dart';
import 'package:proj/cls.dart';
import 'package:proj/home.dart';

class Notes extends StatelessWidget {
  Notes({Key? key}) : super(key: key);

  final txt = TextEditingController();
  final head = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text(
          'create your notes',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 300,
                child: TextField(
                  controller: head,
                )),
            Container(
                width: 300,
                child: TextField(
                  controller: txt,
                )),
            ElevatedButton(
                onPressed: () {
                  var time = TimeOfDay.now().format(context);
                  Notelist.note.add(
                      {'id': head.text, 'Details': txt.text, 'time': time});
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Home())));
                },
                child: Text('Add')),
          ],
        ),
      ),
    );
  }
}
