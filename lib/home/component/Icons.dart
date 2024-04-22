import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
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
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFFEEEEEE),
          appBar: AppBar(
            backgroundColor: Colors.blue,
            elevation: 5
            ,
            // toolbarHeight: 80,
            shadowColor: Colors.blue,
            title: const Text(
              'Icon',
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
            centerTitle: true,
            leading: const Icon(Icons.menu, color: Colors.white),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              )
            ],
          ),
          body: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        5, (index) => Containerdetils(Id: teat[index])),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        4, (index) => Containerdetils(Id: teat[5 + index])),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        3, (index) => Containerdetils(Id: teat[9 + index])),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        5, (index) => Containerdetils(Id: teat[12 + index])),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        3, (index) => Containerdetils(Id: teat[17 + index])),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

List teat = [
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

Container Containerdetils({
  required IconData Id,
}) {
  return Container(
    height:130,
    width: 130,
    margin: const EdgeInsets.only(bottom: 15, left: 15,top: 10),
    alignment: Alignment.center,
    decoration: BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.circular(15),),
    child: Icon(
      Id,
      size: 35,
    ),
  );
}
