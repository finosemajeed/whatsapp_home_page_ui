import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/core/colors_config.dart';
import 'package:whatsapp_ui_clone/domain/database/db.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_listview.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemBuilder: ((context, index) => CustomListView(
              userName: user.entries.elementAt(index + 3).value[0],
              profilePic: user.entries.elementAt(index + 2).value[1],
              subTitle: Wrap(
                children: [
                  const Icon(
                    Icons.call_received,
                    color: Colors.red,
                    size: 20,
                  ),
                  const SizedBox(width: 5),
                  Text('${user.entries.elementAt(index).value[4]}:00'),
                ],
              ),
              trailing: const Icon(
                Icons.call,
                color: tealGreen,
                size: 30,
              ),
            )),
        separatorBuilder: ((context, index) => const Divider()),
        itemCount: 8);
  }
}
