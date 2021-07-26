import 'dart:ui';

import 'package:bitecope/widgets/widgets.dart';
import 'package:flutter/material.dart';

class BitecopeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final Widget actions;

  const BitecopeAppBar({
    Key? key,
    this.title = const SizedBox.shrink(),
    this.actions = const SizedBox.shrink(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final margin = getSize(context).width * 10 / 100;

    // https://stackoverflow.com/questions/51333105/flutter-add-box-shadow-to-a-transparent-container/55833281#55833281
    /*ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          alignment: Alignment.center,
          color: Colors.white.withOpacity(0.1),
        ),
      ),
    )*/

    return Container(
      padding:
          EdgeInsets.fromLTRB(margin, 8.0, margin + kScrollbarThickness, 8.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0.0, 0.5),
            blurRadius: 8.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      width: preferredSize.width,
      height: preferredSize.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          title,
          actions,
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
