import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomListView extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final userName;
  // ignore: prefer_typing_uninitialized_variables
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
    return ListTile(
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
    );
  }
}
