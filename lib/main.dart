import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Profile Home Page'),
        ),
        body: Container(
          width: 300,
          height: 370,
          margin: EdgeInsets.only(left: 50, top: 150),
          alignment: Alignment.center,
          child :Stack(
            alignment: Alignment.center,
            children: [
               Container(
                  child: Text(
                    "Rezgui Abdelkader\nrezgui@lirmm.fr\ntwitter: xxxx",
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  height: 250,
                  width: 300,
                  padding: EdgeInsets.only(top: 130),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    color: Colors.greenAccent,
                  ),
               ),
              Align(
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/shigaraki.jpg'),
                          fit: BoxFit.fill,
                          scale: 0.98
                        ),

                    ),
                  ),
                  alignment: Alignment.topCenter)
              ],
          ),
        ),
      ),
    );
  }
}

