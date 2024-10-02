import 'package:flutter/material.dart';
import 'package:travel_app_ui/utils/post_bottom_bar.dart';

import '../utils/post_appbar.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("lib/assets/city4.jpg"),
        fit: BoxFit.cover,
      )),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: PostAppBar(),
        ),
        bottomNavigationBar: PostBottomBar(),
      ),
    );
  }
}
