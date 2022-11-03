import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/core/colors_config.dart';

AppBar customAppBar({required final screenName}) {
    return AppBar(
      backgroundColor: tealGreenDark,
      title: Text(screenName),
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
    );
  }