


import 'package:flutter/material.dart';


void main() {
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
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffEFF1F3),
      appBar: AppBar(
        title: const Text(
          'Icons Editor',
          style: TextStyle(color: Colors.black),
        ),
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        elevation: 2,
        shadowColor: const Color(0xff244D61),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 25, left: 25),
            height: 250,
            width: 360,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white70, width: 10),
                color: Colors.white),
            alignment: Alignment.center,
            child: Icon(
                data,
              color: colordata,
              size: 100,
            ),
            ),
          Container(
            margin: EdgeInsets.only(top: 25, left: 25),
            height: 60,
            width: 360,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white70, width: 10),
                color: Colors.white),
            alignment: Alignment.center,
            child: Text(
              'SelectColor',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 25, left: 25),
              height: 100,
              width: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white70, width: 10),
                  color: Colors.white),
              alignment: Alignment.center,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    SelectColor.length,
                        (index) => GestureDetector(
                      onTap: (){
                        setState(() {
                          colordata = SelectColor[index];
                        });
                      },
                      child:SelectcolorContainer(color:SelectColor[index]),
                    ),
                  ),
                ),
              )),
          Container(
            margin: EdgeInsets.only(top: 25, left: 25),
            height: 60,
            width: 360,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white70, width: 10),
                color: Colors.white),
            alignment: Alignment.center,
            child: Text(
              'Selecticons',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 25, left: 25),
              height: 100,
              width: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 1),
                  color: Colors.white),
              alignment: Alignment.center,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    SelectIcons.length,
                    (index) => GestureDetector(
                      onTap: (){
                        setState(() {
                          data = SelectIcons[index];
                        });
                      },
                      child: SelecticonsContainer(icondata: SelectIcons[index]),
                    ),
                  ),
                ),
              )),
        ],
      ),
    ));
  }
}

List SelectColor = [
  Color(0xffCBCBCB),
  Color(0xffD8CCE1),
  Color(0xffEEFF40),
  Color(0xff2196F3),
  Color(0xff438AFF),
  Color(0xff3F51B4),
  Color(0xffD8CCE1),
  Color(0xffCBCBCB),
];

var  data;
Color colordata =Colors.black ;

List SelectIcons = [
  Icons.add,
  Icons.album,
  Icons.chevron_left,
  Icons.navigate_next,
  Icons.alarm,
  Icons.verified_user,
  Icons.account_circle,
  Icons.more,
  Icons.sync,
  Icons.shuffle,
  Icons.more_vert,
  Icons.arrow_downward_outlined,
  Icons.phone,
  Icons.search,
  Icons.add_a_photo_sharp,
  Icons.square,
  Icons.arrow_right,
  Icons.apps_rounded,
  Icons.circle_outlined,
  Icons.wifi_lock_outlined,
];

Container SelectcolorContainer({required Color color}) {
  return Container(
    alignment: Alignment.center,
    margin: const EdgeInsets.only(left: 10),
    height: 80,
    width: 80,
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
  );
}

Container SelecticonsContainer({required IconData icondata}) {
  return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 10),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.white38,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: Icon(
        icondata,
        size: 50,

      ));
}
