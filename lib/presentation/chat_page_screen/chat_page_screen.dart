import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/domain/database/db.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_listview.dart';

class ChatPageScreen extends StatelessWidget {
  const ChatPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return CustomListView(
          userName: user.entries.elementAt(index).value[0],
          profilePic: user.entries.elementAt(index).value[1],
          subTitle: Text(user.entries.elementAt(index).value[2]),
          trailing: Text(user.entries.elementAt(index).value[3]),
        );
      },
      itemCount: user.length,
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
    );
  }
}
// Text('$index:${index + 2}0')