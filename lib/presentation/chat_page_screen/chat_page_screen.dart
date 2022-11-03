import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/core/colors_config.dart';

class ChatPageScreen extends StatelessWidget {
  const ChatPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: tealGreenDark,
        title: const Text('Chat'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: ListView.separated(
          itemBuilder: ((context, index) => ListTile(
                leading: const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/whatsapplogo.png'),
                ),
                title: const Text('Sebastin',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    )),
                subtitle: const Text("heloo wer are you"),
                trailing: Text('$index:${index + 2}0'),
              )),
          separatorBuilder: ((context, index) => const Divider(
                thickness: 1,
              )),
          itemCount: 8),
    );
  }
}
