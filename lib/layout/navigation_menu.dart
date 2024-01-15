import 'package:flutter/material.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
    
      child: NavigationBar(
        // overlayColor: MaterialStatePropertyAll(Colors.white),
        backgroundColor: Colors.white,
        height: 60,
        indicatorColor: const Color.fromARGB(255, 195, 195, 195),
        surfaceTintColor: Colors.white,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.location_on), label: 'Location'),
          NavigationDestination(icon: Icon(Icons.person), label: 'User'),
        ],
      ),
    ) ;
  }

}