import 'package:flutter/material.dart';
import 'opening.dart';
import 'navbar.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const OpeningScreen(),
      routes: {
        '/home': (context) => const MyHomePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
       title: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: const NavBar(),
        ),
       backgroundColor: const Color.fromARGB(255, 3, 36, 63),
       toolbarHeight: 100,
      ),
      body: BottomBar(
        theme: const BottomBarThemeData(
          barDecoration: BoxDecoration(
            color: Color.fromARGB(255, 3, 36, 63),
          ),
        ),
        layout: BottomBarLayout(
          width: 320,
          borderRadius: BorderRadius.circular(28),
        ),
        body: Center(),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: 
              Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white.withValues(alpha: 0.2),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/dashboard.png',
                          height: 20,
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Dashboard',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
              SizedBox(width: 20),
              Column(
                mainAxisSize: MainAxisSize.min,
                children:[
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white.withValues(alpha: 0.2),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/reports.png',
                      height: 20,
                      width: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Reports',
                style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
              SizedBox(width: 20),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white.withValues(alpha: 0.2),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/settings.png',
                          height: 20,
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Settings',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
