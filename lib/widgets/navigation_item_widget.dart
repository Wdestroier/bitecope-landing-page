import 'package:bitecope/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationItem extends StatelessWidget {
  final String label;
  final int page;

  const NavigationItem(
    this.label, {
    Key? key,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Text(
          label,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            fontSize: 19.0,
          ),
        ),
      ),
      onTap: () => SpaNavigator.of(context).navigate(page, context: context),
    );
  }
}
