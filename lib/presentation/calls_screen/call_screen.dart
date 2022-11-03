import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/core/colors_config.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: tealGreenDark,
        title: const Text('Call'),
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
                title: const Text(
                  'Sebastin',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Wrap(
                  children: [
                    const Icon(
                      Icons.call_received,
                      color: Colors.red,
                      size: 20,
                    ),
                    const SizedBox(width: 5),
                    Text('$index:${index + 2}0'),
                  ],
                ),
                trailing: const Icon(
                  Icons.call,
                  color: tealGreen,
                  size: 30,
                ),
              )),
          separatorBuilder: ((context, index) => const Divider(
                thickness: 1,
              )),
          itemCount: 8),
    );
  }
}
