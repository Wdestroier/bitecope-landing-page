import 'package:bitecope/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final availableSize = getSize(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(availableSize.width * 10 / 100),
        child: SizedBox(
          height: availableSize.height,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Welcome to Bitecope!',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w800,
                          fontSize: 54.0,
                        ),
                        softWrap: true,
                      ),
                      Text(
                        'Manage supply-chain effectively | Realtime updates | Completely online | Scalable | Sustainable',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 19.0,
                        ),
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
                SvgPicture.asset('illustrations/home_1.svg'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
