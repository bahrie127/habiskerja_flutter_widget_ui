import 'package:flutter/material.dart';

class SampleBottomNavigationBar extends StatefulWidget {
  const SampleBottomNavigationBar({super.key});

  @override
  State<SampleBottomNavigationBar> createState() =>
      _SampleBottomNavigationBarState();
}

class _SampleBottomNavigationBarState extends State<SampleBottomNavigationBar> {
  int selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Bottom navigation bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple[50],
        iconSize: 30,
        showUnselectedLabels: false,
        selectedItemColor: Colors.deepPurple,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
        ],
      ),
    );
  }
}
