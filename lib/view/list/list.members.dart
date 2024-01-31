import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routes/routes.dart';
import '../../shared/shared.dart';
import 'widgets/list.head.dart';
import 'widgets/listview.dart';

class ListMembers extends StatelessWidget {
  static const route = 'list';
  const ListMembers({super.key});

  @override
  Widget build(BuildContext context) {
    AppVar.isSuccess = false;
    dynamic sizeHeight = MediaQuery.sizeOf(context).height;
    dynamic sizeWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => context.pop(),
          child: Icon(
            CupertinoIcons.multiply,
            size: sizeWidth * 0.06,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () => context.pushNamed(RouteName.notif2),
              child: Icon(
                CupertinoIcons.bell,
                size: sizeHeight * 0.025,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: sizeWidth * 0.04),
        child: const Column(
          children: [
            ListHead(),
            ListViewMembers(),
          ],
        ),
      ),
    );
  }
}
