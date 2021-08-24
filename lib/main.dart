import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Input Page',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'User Input Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _name;
  var _email;

  final nameCon = new TextEditingController();
  final emailCon = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:Text('User Input')
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child:Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                    controller: nameCon,
                    decoration:InputDecoration(hintText:'Enter your name')
                ),

                TextField(
                    controller: emailCon,
                    decoration:InputDecoration(hintText:'Enter your email')
                ),

                TextButton( onPressed: (){
                  setState(() {
                    _name = nameCon.text;
                    _email = emailCon.text;

                  });
                },
                    child: Text ('Submit')
                ),
                Text('Your name is $_name and your email is $_email'),
              ],

            ),
          ),
        ));
  }
}


