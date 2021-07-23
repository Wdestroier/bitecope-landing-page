import 'package:bitecope/pages/pages.dart';
import 'package:bitecope/widgets/widgets.dart';
import 'package:flutter/material.dart';

class BitecopeApp extends StatefulWidget {
  const BitecopeApp({Key? key}) : super(key: key);

  @override
  _BitecopeAppState createState() => _BitecopeAppState();
}

class _BitecopeAppState extends State<BitecopeApp> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final pageSize = getSize(context);

    final pageWidth = pageSize.width;
    final pageHeight = pageSize.height;

    return Scaffold(
      body: Scrollbar(
        controller: scrollController,
        isAlwaysShown: true,
        child: ListView(
          scrollDirection: Axis.vertical,
          controller: scrollController,
          children: [
            SizedBox(
              width: pageWidth,
              height: pageHeight,
              child: const Home(),
            ),
            SizedBox(
              width: pageWidth,
              height: pageHeight,
              child: const AboutUs(),
            ),
          ],
        ),
      ),
    );
  }
}
