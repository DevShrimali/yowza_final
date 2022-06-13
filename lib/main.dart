import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yowza Loan App',
      theme: ThemeData(
        fontFamily: "Gotham",
        scaffoldBackgroundColor: tBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: bTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: size.height * .63,
            decoration: BoxDecoration(
              // color: Colors.orange,
              image: DecorationImage(
                image: AssetImage("assets/images/neon-background.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 55.0,
                      width: 55.0,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blueAccent),
                        color: Colors.black,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x28000000),
                            blurRadius: 12,
                            offset: Offset(6, 6),
                          ),
                          BoxShadow(
                            color: Color(0x02ffffff),
                            blurRadius: 12,
                            offset: Offset(-6, -6),
                          ),
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0x00000000), Colors.black],
                        ),
                      ),
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
