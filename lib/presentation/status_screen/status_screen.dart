import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/core/colors_config.dart';
import 'package:whatsapp_ui_clone/core/screen_size.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: tealGreenDark,
        title: const Text('Status'),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const ListTile(
            leading: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('assets/images/whatsapplogo.png'),
            ),
            title: Text(
              'My Status',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text("Tap to add status update"),
          ),
          Container(
            width: SizeConfig.screenWidth,
            height: 40,
            color: const Color.fromARGB(255, 220, 217, 217),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Recent Updates',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: ((context, index) => ListTile(
                      leading: const CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            AssetImage('assets/images/whatsapplogo.png'),
                      ),
                      title: const Text('Sebastin'),
                      subtitle: Text('${index + 2} minutes ago'),
                    )),
                separatorBuilder: ((context, index) => const Divider(
                      thickness: 1,
                    )),
                itemCount: 8),
          )
        ],
      ),
    );
  }
}
