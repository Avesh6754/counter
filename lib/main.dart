import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent.shade100,
          title: const Text(
            'Counter',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: const Icon(Icons.menu),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.search),
            )
          ],
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const   Padding(
                padding: EdgeInsets.only(),
                child: Text(
                  'Click on button for increment and decrement',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding:const  EdgeInsets.only(top: 30, bottom: 100),
                child: Text(
                  '$count',
                  style:const  TextStyle(fontSize: 25),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding:const  EdgeInsets.only(left: 74),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          count++;
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          '+',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:const  EdgeInsets.only(left: 140),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          count--;
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        alignment: Alignment.center,
                        child:const  Text(
                          '-',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

int count = 0;
