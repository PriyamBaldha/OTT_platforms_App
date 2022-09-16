import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map> Website = [
    {
      'id': 1,
      'name': 'Netflix',
      'website': "https://www.netflix.com",
      'image': 'assets/images/Netflix.png',
      'color': Colors.red,
    },
    {
      'id': 2,
      'name': 'Amazon Prime',
      'website': "https://www.amazonprime.com",
      'image': 'assets/images/amazonPrime.png',
      'color': Colors.black,
    },
    {
      'id': 3,
      'name': 'Hotstar',
      'website': "https://www.hotstar.com",
      'image': 'assets/images/hotstar.jpg',
      'color': Colors.black,
    },
    {
      'id': 4,
      'name': 'Sony Liv',
      'website': "https://www.sonyliv.com",
      'image': 'assets/images/sonylive.png',
      'color': Colors.blueAccent,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Web Browser"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.green,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const SizedBox(
          //   height: 5,
          // ),
          ...Website.map((e) => Container(
                decoration: BoxDecoration(
                  color: Colors.teal,
                  border: Border.all(color: Colors.amber),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Colors.teal,
                      Colors.redAccent,
                      Colors.purple,
                      Colors.tealAccent,
                    ],
                  ),
                ),
                child: Card(
                  //color: Colors.pinkAccent,
                  elevation: 5,
                  // shadowColor: Colors.purple,

                  child: ListTile(
                    contentPadding: const EdgeInsets.all(8),
                    style: ListTileStyle.list,
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed('OTT_Platform_Page', arguments: e);
                    },
                    subtitle: Text(
                      "${e['website']}",
                      style: const TextStyle(
                          //fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.blueAccent),
                    ),
                    title: Text(
                      "${e['name']}",
                      style: const TextStyle(
                        //fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    leading: Text(
                      "${e['id']}",
                      style: const TextStyle(
                        //fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    trailing: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(e['image']),
                    ),
                  ),
                ),
              )).toList()
        ],
      ),
    );
  }
}
