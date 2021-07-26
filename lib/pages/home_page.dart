import 'package:bitecope/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final availableSize = getSize(context);

    final mobile = isMobile(context);
    final desktop = isDesktop(context);
    final tablet = isTablet(context);

    return Container(
      color: Colors.white,
      height: availableSize.height,
      padding: EdgeInsets.symmetric(
        horizontal: availableSize.width * 10 / 100,
        vertical: availableSize.width * 10 / 100,
      ),
      //padding: EdgeInsets.all(availableSize.width * 10 / 100),
      child: Flex(
        direction: desktop ? Axis.horizontal : Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(
                top: (tablet ? 0 : kToolbarHeight),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Welcome to Bitecope!',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w800,
                      fontSize: mobile ? 40.0 : 54.0,
                    ),
                    softWrap: true,
                    maxLines: 2,
                  ),
                  Text(
                    'Manage supply-chain effectively | Realtime updates | Completely online | Scalable | Sustainable',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: mobile ? 14.0 : 19.0,
                    ),
                    softWrap: true,
                  ),
                ],
              ),
            ),
          ),
          desktop
              ? SvgPicture.asset('illustrations/home_1.svg')
              : Flexible(child: SvgPicture.asset('illustrations/home_1.svg')),
        ],
      ),
    );
  }
}
