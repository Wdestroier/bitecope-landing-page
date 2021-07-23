import 'package:flutter/material.dart';

Size getSize(BuildContext context) => MediaQuery.of(context).size;

bool isDesktop(BuildContext context) => getSize(context).width >= 1200;

bool isTablet(BuildContext context) {
  var width = getSize(context).width;

  return width >= 760 && width < 1200;
}

bool isMobile(BuildContext context) => getSize(context).width < 760;
