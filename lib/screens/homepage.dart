import 'package:flutter/material.dart';
import 'package:ps/screens/aboutpage.dart';
import '../data/data.dart';
import 'package:url_launcher/url_launcher.dart';



class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Text("PS Shortcuts",
                  style: TextStyle(
                    color:Colors.black,
                    fontSize: 25.0,
                  ),
                  ),
                ),
              ),
            ),
            
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),

             ListTile(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(
                  builder:(context){
                    return aboutpage();
                  }
                  ),
                  );
              },
              leading: Icon(Icons.info),
              title: Text("About"),
            ),

             ListTile(
              onTap: (){
              launch("https://play.google.com"); // from url_launcher package
              },
              leading: Icon(Icons.star),
              title: Text("Rate"),
            ),

             

          ],
        ),
      ),


    
      appBar: AppBar(
        title: Text("Photoshop Shortcuts"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return aboutpage();
                },
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("${index + 1} "),
            ),
            title: Text(data[index]["key"]),
            subtitle: Text(data[index]["use"]),
          );
        },
      ),
    );
  }
}
