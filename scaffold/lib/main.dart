import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: const <Widget>[
              // DrawerHeader(
              //   decoration: BoxDecoration(
              //     color: Colors.green,
              //   ),
              //   child: Text(
              //     'Welcome to Javatpoint',
              //     style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 30,
              //     ),
              //   ),
              // ),
              UserAccountsDrawerHeader(
                accountName: Text("javatpoint"),
                accountEmail: Text("javatpoint@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Text("abc"),
                ),
              ),
              ListTile(
                title: Text('1'),
              ),
              ListTile(
                title: Text("All Mail Inboxes"),
                leading: Icon(Icons.mail),
              ),
              Divider(
                height: 0.2,
              ),
              ListTile(
                title: Text("Primary"),
              ),
              ListTile(
                title: Text("Social"),
              ),
              ListTile(
                title: Text("Promotions"),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white70,
        primary: true,
        appBar: AppBar(
          title: Text('my frist app'),
          centerTitle: true,
        ),
        body: Center(
          child: Text('hello'),
        ),
      ),
    ));
