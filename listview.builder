import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
debugShowCheckedModeBanner: false ,
      theme: ThemeData(


        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Basics'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
var arrColors=["blue","green","red","yellow","pink","indigo"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(


          title: Text(" Text Button"),
        ),
        body:ListView.builder(itemBuilder:(context,index){
          return Text(arrColors[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),);
    },
        itemCount: arrColors.length,
          scrollDirection: Axis.horizontal,
          
        )
    );
  }
}




