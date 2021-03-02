import 'package:flutter/material.dart';
import './XDiPhoneXRXSMax113.dart';
import 'package:adobe_xd/page_link.dart';
import './XDiPhoneXRXSMax115.dart';

class XDiPhoneXRXSMax112 extends StatelessWidget {
  XDiPhoneXRXSMax112({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(-61.0, -247.0),
            child: Container(
              width: 672.0,
              height: 637.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0x73e34848),
                border: Border.all(width: 1.0, color: const Color(0x73707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(43.0, 180.0),
            child: Container(
              width: 335.0,
              height: 168.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(43.0, 381.0),
            child: Container(
              width: 335.0,
              height: 172.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(40.0, 606.0),
            child: Container(
              width: 335.0,
              height: 172.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(98.0, 60.0),
            child: Text(
              'Fungal Doc',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 44,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(52.0, 187.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDiPhoneXRXSMax113(),
                ),
              ],
              child: Container(
                width: 318.0,
                height: 155.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: const Color(0x54006eff),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(52.0, 390.0),
            child: Container(
              width: 320.0,
              height: 156.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: const Color(0x54006eff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(47.0, 613.0),
            child: Container(
              width: 320.0,
              height: 159.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: const Color(0x54006eff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(118.0, 236.0),
            child: Text(
              'Detector',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 44,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(60.0, 438.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDiPhoneXRXSMax115(),
                ),
              ],
              child: Text(
                'Doctor Details',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 44,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(148.0, 664.0),
            child: Text(
              'Facts',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 44,
                color: const Color(0xff0f0d0d),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(163.0, 832.0),
            child: Text(
              'EXIT',
              style: TextStyle(
                fontFamily: 'Poor Richard',
                fontSize: 40,
                color: const Color(0xff0f0d0d),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
