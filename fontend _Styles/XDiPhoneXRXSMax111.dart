import 'package:flutter/material.dart';
import './XDiPhoneXRXSMax112.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDiPhoneXRXSMax111 extends StatelessWidget {
  XDiPhoneXRXSMax111({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(322.8, 632.1),
            child: SvgPicture.string(
              _svg_xs7sfv,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(139.0, 709.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDiPhoneXRXSMax112(),
                ),
              ],
              child: Text(
                'Start',
                style: TextStyle(
                  fontFamily: 'Sylfaen',
                  fontSize: 59,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(85.0, 83.0),
            child: Text(
              'Fungal Doc',
              style: TextStyle(
                fontFamily: 'Sylfaen',
                fontSize: 55,
                color: const Color(0xff0e0e0f),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(18.0, 18.4),
            child: SvgPicture.string(
              _svg_r753bq,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(105.0, 35.0),
            child: Transform.rotate(
              angle: 3.1416,
              child: Container(
                width: 619.0,
                height: 590.0,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  color: const Color(0x706b9ee0),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(88.0, 245.0),
            child:
                // Adobe XD layer: 'desktop_robo 2' (shape)
                Container(
              width: 252.0,
              height: 380.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/logo.png'),
                  fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x66000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_xs7sfv =
    '<svg viewBox="322.8 632.1 67.0 238.3" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 389.78, 870.06)" d="M 66.98229217529297 -0.33477783203125 L 0 -0.33477783203125 L 0 237.9525604248047" fill="none" fill-opacity="0.62" stroke="#130707" stroke-width="2" stroke-opacity="0.62" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_r753bq =
    '<svg viewBox="18.0 18.4 67.0 238.3" ><path transform="matrix(1.0, 0.0, 0.0, 1.0, 18.02, 18.69)" d="M 66.98229217529297 -0.33477783203125 L 0 -0.33477783203125 L 0 237.9525604248047" fill="none" fill-opacity="0.44" stroke="#0e0404" stroke-width="2" stroke-opacity="0.44" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
