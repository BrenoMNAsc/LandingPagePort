import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../src/responsive.dart';

class TopBarContents extends StatefulWidget {
  ScrollController controller;

  TopBarContents({super.key, required this.controller});

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(27, 31, 59, 1),
      height: 90,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2.2,
              child: Padding(
                padding: const EdgeInsets.only(left:162),
                child: Text(
                            'BRENO MOTA',
                            style: GoogleFonts.poppins(
                                color : Colors.white,
                                fontSize: ResponsiveWidget.isMediumScreen(context)
                                    ? 16
                                    : 18,
                                fontWeight: FontWeight.w700),
                                textAlign: TextAlign.left,
                          ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right:162),
              width: MediaQuery.of(context).size.width / 2.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: InkWell(
                      onHover: (value) {
                        setState(() {
                          value ? _isHovering[0] = true : _isHovering[0] = false;
                        });
                      },
                      onTap: () {
                          widget.controller.animateTo(
                              0,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeOut);
                        },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'SOBRE MIM',
                            style: GoogleFonts.poppins(
                                color: _isHovering[0]
                                    ? const Color.fromRGBO(69, 74, 222, 1)
                                    : Colors.white,
                                fontSize: ResponsiveWidget.isMediumScreen(context)
                                    ? 14
                                    : 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[0],
                            child: Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(69, 74, 222, 1),
                                  borderRadius: BorderRadius.circular(100)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[1] = true : _isHovering[1] = false;
                    });
                  },
                  onTap: () {
                      widget.controller.animateTo(
                          780,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeOut);
                    },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'PORTFÓLIO',
                        style: GoogleFonts.poppins(
                            color: _isHovering[1]
                                ? const Color.fromRGBO(69, 74, 222, 1)
                                : Colors.white,
                            fontSize: ResponsiveWidget.isMediumScreen(context)
                                ? 14
                                : 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[1],
                        child: Container(
                          height: 5,
                          width: 5,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(69, 74, 222, 1),
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[2] = true : _isHovering[2] = false;
                    });
                  },
                  onTap: () {
                      widget.controller.animateTo(
                          widget.controller.position.maxScrollExtent,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeOut);
                    },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'CONTATO',
                        style: GoogleFonts.poppins(
                            color: _isHovering[2]
                                ? const Color.fromRGBO(69, 74, 222, 1)
                                : Colors.white,
                            fontSize: ResponsiveWidget.isMediumScreen(context)
                                ? 14
                                : 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[2],
                        child: Container(
                          height: 5,
                          width: 5,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(69, 74, 222, 1),
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      )
                    ],
                  ),
                ),
              )]
              ),
            )
          ],
        ),
      ),
    );
    //);
  }
}
