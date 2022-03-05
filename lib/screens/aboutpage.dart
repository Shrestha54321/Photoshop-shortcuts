import 'package:flutter/material.dart';
class aboutpage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('About'),

      ),
      body:Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("This app contains some important shortcut keys for photoshop",
              style: TextStyle(
                fontSize: 18.0,
              ),
              ),
            ),
          ),
          RaisedButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Text("Back"),
          ),
        ],
      )
    );
    
  }
}