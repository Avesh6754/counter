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
          backgroundColor: Color(0xff54759E),
          elevation: 2,
          shadowColor: Colors.black,
          title: const Text(
            'Calc',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          leading: const Icon(Icons.menu,color: Colors.white,),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.search,color:Colors.white,),
            )
          ],
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:const  EdgeInsets.only(top:200),
                child: Text(
                  '$count',
                  style: const TextStyle(fontSize:70),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 70),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          count = count - 2;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xff54759E),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child:const  Text(
                          '-2',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:const EdgeInsets.only(left: 30, top: 70),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          count = count + 2;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 150,
                        decoration: BoxDecoration(
                          color:const  Color(0xff54759E),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          '+2',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding:const  EdgeInsets.only(left: 40, top: 30),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          count = count - 4;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xff54759E),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child:const  Text(
                          '-4',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:const  EdgeInsets.only(left: 30, top: 30),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          count = count + 4;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 150,
                        decoration: BoxDecoration(
                          color:const  Color(0xff54759E),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child:const Text(
                          '+4',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding:const EdgeInsets.only(top: 40),child: GestureDetector(
                    onTap: () {
                      setState(() {
                        count=0;
                      });
                    },
                    child: Container(
                      height: 45,
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color(0xff54759E),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Clear',style: TextStyle(
                          fontSize: 25,
                          color: Colors.white
                      ),
                      ),
                    ),
                  ),)

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
