import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/core/colors_config.dart';
import 'package:whatsapp_ui_clone/presentation/calls_screen/call_screen.dart';
import 'package:whatsapp_ui_clone/presentation/chat_page_screen/chat_page_screen.dart';
import 'package:whatsapp_ui_clone/presentation/status_screen/status_screen.dart';

class BottomNavigationBarScreen extends StatelessWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: tealGreenDark,
          child: const Icon(Icons.add),
        ),
        body: CustomScrollView(slivers: [
          SliverAppBar(
            backgroundColor: tealGreenDark,
            pinned: true,
            floating: true,
            title: const Text('WhatsApp'),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              PopupMenuButton(itemBuilder: (context) {
                return const [
                  PopupMenuItem(child: Text('New group')),
                  PopupMenuItem(child: Text('New broadcast')),
                  PopupMenuItem(child: Text('Linked devices')),
                  PopupMenuItem(child: Text('Starred messages')),
                  PopupMenuItem(child: Text('Payment')),
                  PopupMenuItem(child: Text('Settings')),
                ];
              })
            ],
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(text: 'CHATS'),
                Tab(text: 'STATUS'),
                Tab(text: 'CALLS'),
              ],
              indicatorColor: Colors.white,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 1000,
                child: TabBarView(children: [
                  Icon(Icons.camera_alt),
                  ChatPageScreen(),
                  StatusScreen(),
                  CallScreen(),
                ]),
              ),
            ]),
          )
        ]),
      ),
    );
  }
}
