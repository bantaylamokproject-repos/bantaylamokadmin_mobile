import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar ({super.key});

@override
  State<NavBar> createState() => _NavBarState();
}


class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
          ),
          child: Image.asset(
            'assets/LogoNotPNG.jpg',
            height: 40,
            width: 40,
            fit: BoxFit.contain,
          ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(7.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white.withValues(alpha: 0.2),
          ),
          child: Image.asset(
            'assets/search.png', 
            height: 20,
            width: 20,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10.0),
          padding: const EdgeInsets.all(7.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white.withValues(alpha: 0.2),
          ),
          child: Image.asset(
            'assets/notifications.png',
            color: Colors.white.withOpacity(0.8),
            height: 20,
            width: 20,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10.0),
          padding: const EdgeInsets.all(7.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white.withValues(alpha: 0.2),
          ),
          child: Image.asset(
            'assets/menu.png',
            color: Colors.white.withOpacity(0.8),
            height: 20,
            width: 20,
          ),
        ),
      ],
    );
  }
}