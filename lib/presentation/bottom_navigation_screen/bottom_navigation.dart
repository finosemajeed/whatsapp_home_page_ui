import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/core/colors_config.dart';
import 'package:whatsapp_ui_clone/presentation/calls_screen/call_screen.dart';
import 'package:whatsapp_ui_clone/presentation/chat_page_screen/chat_page_screen.dart';
import 'package:whatsapp_ui_clone/presentation/status_screen/status_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _pages = <Widget>[
    const ChatPageScreen(),
    const CallScreen(),
    const StatusScreen(),
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
      body: _pages.elementAt(_selectedIndex),
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
