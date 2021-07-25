import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 55.0,
          child: SvgPicture.asset('illustrations/logo.svg'),
        ),
        const SizedBox(width: 8.0),
        Text(
          'Bite Cope',
          style: GoogleFonts.righteous(
            fontWeight: FontWeight.w400,
            fontSize: 24.6,
          ),
        ),
      ],
    );
  }
}
