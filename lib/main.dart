import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Data.dart';
import 'NewData.dart';


void main()=>{
  runApp(MultiProvider(
    providers: [
    ChangeNotifierProvider(create: (BuildContext context) => Data()),
    ChangeNotifierProvider(create: (BuildContext context) => NewData()),
    ],
  child: const MyApp())),
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final firstNotifier = Provider.of<Data>(context);
    final secondNotifier = Provider.of<NewData>(context);

    return SafeArea(
        child: Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [Colors.pink, Colors.yellow])),
          child: Container(
            alignment: Alignment.topLeft,
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Text(firstNotifier.incre.toString()),
                    Text(secondNotifier.decre.toString())
                  ],
                ),
              ),
            ),
          )),
    ));
  }
}
