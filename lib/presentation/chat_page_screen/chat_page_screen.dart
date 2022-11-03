import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/core/colors_config.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_appbar.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_listview.dart';

class ChatPageScreen extends StatelessWidget {
  const ChatPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: customAppBar(screenName: 'Chat'),
      body: CustomListView(
        userName: 'Bilbo Baggins',
        profilePic: "assets/images/whatsapplogo.png",
        subTitle: const Text('Hello, where are you?'),
        trailing: const Text("12:33"),
      ),
    );
  }
}
// Text('$index:${index + 2}0')