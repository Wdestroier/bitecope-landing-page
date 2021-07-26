import 'package:bitecope/pages/pages.dart';
import 'package:bitecope/widgets/widgets.dart';
import 'package:flutter/material.dart';

class BitecopeApp extends StatelessWidget {
  const BitecopeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpaNavigator(
      scrollController: ScrollController(),
      appBar: BitecopeAppBar(
        title: const Logo(),
        actions: isMobile(context)
            ? InkWell(
                child: const Icon(Icons.dehaze_rounded),
                onTap: () => debugPrint('Drawer is not implemented!'),
              )
            : Row(
                children: const [
                  NavigationItem(
                    'Home',
                    page: _Page.home,
                  ),
                  NavigationItem(
                    'About Us',
                    page: _Page.aboutUs,
                  ),
                ],
              ),
      ),
      pages: {
        _Page.home: (context) => const Home(),
        _Page.aboutUs: (context) => const AboutUs(),
      },
    );
  }
}

class _Page {
  static const int home = 0, aboutUs = 1;
}
