import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  final userName;
  final profilePic;
  Widget? subTitle;
  Widget? trailing;
  // Widget? trailing;
  // final bool isTrailing;

  CustomListView({
    Key? key,
    this.userName,
    this.profilePic,
    this.subTitle,
    this.trailing,
    // required this.isTrailing
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: ((context, index) => ListTile(
              leading: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(profilePic),
              ),
              title: Text(userName,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  )),
              subtitle: subTitle,
              trailing: trailing,
            )),
        separatorBuilder: ((context, index) => const Divider(
              thickness: 1,
            )),
        itemCount: 8);
  }
}
