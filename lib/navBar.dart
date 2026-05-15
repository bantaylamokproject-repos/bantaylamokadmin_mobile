import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar ({super.key});

@override
  State<NavBar> createState() => _NavBarState();
}


class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        toolbarHeight: 100,
        leadingWidth: 12,
        leading: Padding(padding: const EdgeInsets.only(left: 20), 
        ),
        backgroundColor: const Color.fromARGB(255, 7, 39, 87),
        title: Row(
          children: [
            ClipOval(
              child: Image.asset(
                'assets/LogoNotPNG.jpg',
                height: 50,
                width: 50,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
  );
}
}