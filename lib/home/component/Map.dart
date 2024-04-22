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
            elevation: 2,
            toolbarHeight: 80,
            shadowColor: Colors.blue,
            title: const Text(
              'Map',
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
          body: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Column(
                  children: List.generate(teat.length, (index) => Containerdetils(Name:teat[index]['Name'],Id: teat[index]['Icon'],width: width) ),
                )
              ],
            ),
          ),
        ));
  }
}

List teat = [
  {
    'Name': 'Exit',
    'Icon': Icons.exit_to_app,
  },
  {
    'Name': 'Play',
    'Icon': Icons.play_arrow,
  },
  {
    'Name': 'Pause',
    'Icon': Icons.pause,
  },
  {
    'Name': 'Stop',
    'Icon': Icons.stop,
  },
  {
    'Name': 'Close',
    'Icon': Icons.close,
  },
  {
    'Name': 'Delete',
    'Icon': Icons.delete,
  },
  {
    'Name': 'Email',
    'Icon': Icons.email,
  }
];

Container Containerdetils({required String Name, required IconData Id, required double width}) {
  return Container(
    height: width/4.50,
    width: double.infinity,
    margin: const EdgeInsets.only(bottom: 15),
    decoration: const BoxDecoration(color: Colors.white),
    child: Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            Name,
            style: const TextStyle(fontSize: 22),
          ),
          Icon(
            Id,
            size: 30,
          ),
        ],
      ),
    ),
  );
}
