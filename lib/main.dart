import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InitialPage(

      ),
    );
  }
}

class InitialPage extends StatefulWidget {


  InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  int number = 0;
  void plus() {
    setState(() {
      number++;
    });
  }
  void minus() {
    setState(() {
      number--;
    });
  }
  void reset() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Test Page',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 270,),
          Center(child: Text('My App',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),)),
          Center(child: Text('$number',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22),)),
        ],
      ),
      floatingActionButton: Row(
        children: [
          SizedBox(width: 220,),
          FloatingActionButton(onPressed: plus, child: Icon(Icons.add)),
          FloatingActionButton(onPressed: minus, child: Icon(Icons.remove)),
          FloatingActionButton(onPressed: reset, child: Icon(Icons.reset_tv)),
        ],
      ),
    );
  }
}
