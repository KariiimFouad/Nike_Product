import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Nike"),
        backgroundColor: Colors.redAccent,
        leading: Icon(Icons.arrow_back),
        actions: [ Icon(Icons.star)],
      ),
      body:Center(
        child: Column(
        children:  [
          Image(
            image: NetworkImage('https://images.unsplash.com/photo-1581619883162-4a1aa0a6a0c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
          height:300,
            width: 600,
            fit: BoxFit.fitWidth,
          ),
          Text("details",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.left),
          Text("Air Jordon 15(XV) ", style:TextStyle(fontSize: 20,),textAlign: TextAlign.left,),
          Text("Price :1999€", style:TextStyle(fontSize: 20,),textAlign: TextAlign.left,),

          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: Colors.yellow,
                border: Border.all(
                    width: 5
                )
            ),
            child: Icon(Icons.add_shopping_cart_sharp,color: Colors.white,size: 40,),
          )
        ],
        )


      )

    );}
}


