import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/core/colors_config.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_appbar.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_listview.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: customAppBar(screenName: 'Call'),
        body: CustomListView(
          userName: 'Sebastin',
          profilePic: 'assets/images/whatsapplogo.png',
          subTitle: Wrap(
            children: const [
              Icon(
                Icons.call_received,
                color: Colors.red,
                size: 20,
              ),
              SizedBox(width: 5),
              Text('00:00'),
            ],
          ),
          trailing: const Icon(
            Icons.call,
            color: tealGreen,
            size: 30,
          ),
        ));
  }
}
