import 'package:flutter/cupertino.dart';
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
          backgroundColor: Color(0xff99CCFF),
          elevation: 3,
          shadowColor: Colors.blue,
          title: const Text(
            'Chess',
            style: TextStyle(color: Colors.black,fontSize: 28),
          ),
          centerTitle: true,
          leading: const Icon(Icons.menu,size:28,),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.search,size: 28,),
            )
          ],
        ),
        body: Container(
          alignment: Alignment.center,
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                border: Border.all(
                    width: 2,color: Colors.black
                )
            ),
            child: Column(
              children: [
                firstline(),
                Secondline(),
                firstline(),
                Secondline(),
                firstline(),
                Secondline(),
                firstline(),
                Secondline(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Row firstline()
{
  return Row(
    children: [
      Cont(),
      Cont2(),
      Cont(),
      Cont2(),
      Cont(),
      Cont2(),
      Cont(),
      Cont2(),

    ],

  );
}
Row Secondline()
{
  return Row(
    children: [
      Cont2(),
      Cont(),
      Cont2(),
      Cont(),
      Cont2(),
      Cont(),
      Cont2(),
      Cont(),
    ],

  );
}
Widget Cont()
{
  return Container(
    height: 37,
    width: 37,
    decoration: BoxDecoration(
        color: Color(0xff006699)
    ),
  );
}
Widget Cont2()
{
  return Container(
    height: 37,
    width: 37,
    decoration: BoxDecoration(
        color: Color(0xff99CCFF)
    ),
  );
}

