import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crashbay.com',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
         visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
bool web=false; 
   @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      setState(() {
        web=true;
      });
      }
    );
  }

  @override
  Widget build(BuildContext context) {
if (web==false){
 return Scaffold(
      backgroundColor: Color(0xfff9141d),
      body:
       Center(
        child: Container(child: Image.asset('assets/logo.jpeg'),
        width: 250,
        height: 250,)
           
         
         
        )
      );
}else if (web==true){
 return  SafeArea(
    child: WebviewScaffold(
      url: 'https://crashbay.com/',
      
      withZoom: true,
      withLocalStorage: true,
      hidden: true,
      initialChild: Container(
        color: Color(0xfff9141d),
        child: Center(child:  Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.jpeg'),
       
             const Center(
          child: Text('Loading.....',style: TextStyle(color:Colors.white),),
        )
          ],
        )
       ,)
        )
        )

  );
   
  }
   
    
  }}
