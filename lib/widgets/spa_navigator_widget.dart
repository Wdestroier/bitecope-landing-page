import 'package:bitecope/widgets/widgets.dart';
import 'package:flutter/material.dart';

const double kScrollbarThickness = 10.0;

class SpaNavigator extends InheritedWidget {
  final Widget appBar;
  final Map<int, WidgetBuilder> pages;
  final ScrollController scrollController;

  SpaNavigator({
    Key? key,
    required this.scrollController,
    this.appBar = const SizedBox.shrink(),
    this.pages = const {},
  }) : super(
          key: key,
          child: _SpaNavigator(
            appBar: appBar,
            pages: pages,
            scrollController: scrollController,
          ),
        );

  static SpaNavigator of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SpaNavigator>()!;
  }

  void navigate(int page, {double? pageHeight, BuildContext? context}) {
    assert(pageHeight != null || context != null);

    pageHeight ??= getSize(context!).height;

    scrollController.animateTo(
      page * pageHeight + 15.0,
      duration: const Duration(milliseconds: 700),
      curve: Curves.linearToEaseOut,
    );
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}

class _SpaNavigator extends StatelessWidget {
  final Widget appBar;
  final Map<int, WidgetBuilder> pages;
  final ScrollController scrollController;

  const _SpaNavigator({
    Key? key,
    required this.scrollController,
    this.appBar = const SizedBox.shrink(),
    this.pages = const {},
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RawScrollbar(
        controller: scrollController,
        isAlwaysShown: true,
        child: Stack(
          children: [
            Expanded(
              child: ListView(
                controller: scrollController,
                children:
                    pages.values.map((builder) => builder(context)).toList(),
                scrollDirection: Axis.vertical,
              ),
            ),
            appBar,
          ],
        ),
        radius: Radius.zero,
        thickness: kScrollbarThickness,
        thumbColor: const Color(0xFF151515),
        fadeDuration: Duration.zero,
      ),
    );
  }
}
