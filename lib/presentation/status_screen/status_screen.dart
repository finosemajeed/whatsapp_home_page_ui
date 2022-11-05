import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/core/screen_size.dart';
import 'package:whatsapp_ui_clone/domain/database/db.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_listview.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        ListView.separated(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemBuilder: ((context, index) => CustomListView(
                userName: user.entries.elementAt(index + 1).value[0],
                profilePic: user.entries.elementAt(index + 1).value[1],
                subTitle: Text(
                    "${user.entries.elementAt(index).value[4]} minutes ago"),
              )),
          separatorBuilder: ((context, index) => Divider()),
          itemCount: 9,
        )
      ],
    );
  }
}
