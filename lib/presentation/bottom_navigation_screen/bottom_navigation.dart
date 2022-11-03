import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/core/colors_config.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _pages = <Widget>[
    const Icon(Icons.chat, size: 150),
    const Icon(Icons.chat, size: 150),
    const Icon(Icons.person, size: 150),
  ];
  void _onItmeTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline_rounded), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
          BottomNavigationBarItem(
              icon: Icon(Icons.data_usage_outlined), label: 'Status')
        ],
        currentIndex: _selectedIndex,
        onTap: _onItmeTapped,
      ),
    );
  }
}
