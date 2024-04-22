
import 'package:flutter/material.dart';
void main()
{
  runApp(Myapp());

}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic List',style: TextStyle(color: Colors.white),),
        leading: const Icon(Icons.menu,color: Colors.white,),
        elevation: 2,
        shadowColor:const Color(0xff244D61) ,
        centerTitle: true,
        backgroundColor:const Color(0xff244D61) ,
        actions: const [
          Padding(padding: EdgeInsets.only(right: 10),child: Icon(Icons.search,color: Colors.white,),)
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            ...List.generate(Cart.length, (index) =>Containerdeatils(index+1,(index%2==0)?Color(0xff75E2FF):Color(0xff5688C0), ),)
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(right:20),
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle
              ,color: Colors.black54,
            ),
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Cart.add(Containerdeatils);
                });
              },
              child:const Icon(
                Icons.add,
                color: Colors.white,

              ),
            ),
          ),

          Container(

            height: 60,
            width: 60,
            decoration: const BoxDecoration(
                shape: BoxShape.circle
                ,color: Colors.black54

            ),

            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Cart.remove(Containerdeatils);
                });
              },
              child:const Icon(
                Icons.remove,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    ));
  }
}

List Cart =[

];
Container Containerdeatils( int count , Color color)
{
  return Container(
    margin: const EdgeInsets.only(top: 10,left: 5),

    height: 100,
    width: 400,
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20)
    ),
    alignment: Alignment.center,
    child: Text('$count',style:const  TextStyle(fontSize: 35,color: Colors.white),),

  );
}