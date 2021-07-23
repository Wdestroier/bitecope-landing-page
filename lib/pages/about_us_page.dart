import 'package:bitecope/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final availableSize = getSize(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: availableSize.width * 10 / 100,
        ),
        child: SizedBox(
          height: availableSize.height,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'About Us!',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w700,
                    fontSize: 41.0,
                  ),
                ),
                Flex(
                  direction:
                      isDesktop(context) ? Axis.horizontal : Axis.vertical,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('illustrations/about_us_2.svg'),
                    SvgPicture.asset('illustrations/about_us_3.svg'),
                    SvgPicture.asset('illustrations/about_us_4.svg'),
                  ],
                ),
                Text(
                  'Bitecope is one of a kind company which designs tools to be used by manufacturer, distributor as well as the retailer making the whole process hassle-free, co-ordinated and online. We provide multi-channel accessibility through mobile app and website.',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 19.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
