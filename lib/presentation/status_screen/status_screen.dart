import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/core/colors_config.dart';
import 'package:whatsapp_ui_clone/core/screen_size.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_appbar.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_listview.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: customAppBar(screenName: 'Status'),
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
              child: CustomListView(
            userName: 'Sebastin',
            profilePic: 'assets/images/whatsapplogo.png',
            subTitle: Text("13 minutes ago"),
          ))
        ],
      ),
    );
  }
}
