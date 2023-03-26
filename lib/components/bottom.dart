import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/src/responsive.dart';
import 'dart:html' as html;

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Container(
            color: const Color.fromRGBO(27, 31, 59, 1),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      html.window.open('https://wa.me/88997259807', "_blank");
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: SizedBox(
                                width: ResponsiveWidget.isLargeScreen(
                                            context) ||
                                        ResponsiveWidget.isMediumScreen(context)
                                    ? 50
                                    : 35,
                                child: const Image(
                                  image: AssetImage("assets/imgs/whatsapp.png"),
                                  fit: BoxFit.fitWidth,
                                  color: Colors.white,
                                )),
                          ),
                          Text("+55 88 9 9725-9807",
                              style: GoogleFonts.poppins(
                                fontSize: ResponsiveWidget.isLargeScreen(
                                            context) ||
                                        ResponsiveWidget.isMediumScreen(context)
                                    ? 16
                                    : 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              )),
                        ]),
                  ),
                  InkWell(
                    onTap: () {
                      html.window.open('mailto:breno.golo@gmail.com', "_blank");
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: SizedBox(
                                width: ResponsiveWidget.isLargeScreen(
                                            context) ||
                                        ResponsiveWidget.isMediumScreen(context)
                                    ? 50
                                    : 35,
                                child: const Image(
                                  image: AssetImage("assets/imgs/email.png"),
                                  fit: BoxFit.fitWidth,
                                  color: Colors.white,
                                )),
                          ),
                          Text("breno.golo@gmail.com",
                              style: GoogleFonts.poppins(
                                fontSize: ResponsiveWidget.isLargeScreen(
                                            context) ||
                                        ResponsiveWidget.isMediumScreen(context)
                                    ? 16
                                    : 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              )),
                        ]),
                  ),
                  InkWell(
                    onTap: () {
                      html.window.open(
                          'https://www.linkedin.com/in/brienu/', "_blank");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: SizedBox(
                              width: ResponsiveWidget.isLargeScreen(context) ||
                                      ResponsiveWidget.isMediumScreen(context)
                                  ? 50
                                  : 35,
                              child: const Image(
                                image: AssetImage("assets/imgs/linkedin.png"),
                                fit: BoxFit.fitWidth,
                                color: Colors.white,
                              )),
                        ),
                        Text("/in/brienu",
                            style: GoogleFonts.poppins(
                              fontSize: ResponsiveWidget.isLargeScreen(
                                          context) ||
                                      ResponsiveWidget.isMediumScreen(context)
                                  ? 16
                                  : 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      html.window.open(
                          'https://www.instagram.com/brienouu/', "_blank");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: SizedBox(
                              width: ResponsiveWidget.isLargeScreen(context) ||
                                      ResponsiveWidget.isMediumScreen(context)
                                  ? 50
                                  : 35,
                              child: const Image(
                                image: AssetImage("assets/imgs/insta.png"),
                                fit: BoxFit.fitWidth,
                                color: Colors.white,
                              )),
                        ),
                        Text("/brienouu",
                            style: GoogleFonts.poppins(
                              fontSize: ResponsiveWidget.isLargeScreen(
                                          context) ||
                                      ResponsiveWidget.isMediumScreen(context)
                                  ? 16
                                  : 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      html.window
                          .open('https://github.com/Escumalha', "_blank");
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: SizedBox(
                                width: ResponsiveWidget.isLargeScreen(
                                            context) ||
                                        ResponsiveWidget.isMediumScreen(context)
                                    ? 50
                                    : 35,
                                child: const Image(
                                  image: AssetImage("assets/imgs/github.png"),
                                  fit: BoxFit.fitWidth,
                                  color: Colors.white,
                                )),
                          ),
                          Text("/Escumalha",
                              style: GoogleFonts.poppins(
                                fontSize: ResponsiveWidget.isLargeScreen(
                                            context) ||
                                        ResponsiveWidget.isMediumScreen(context)
                                    ? 16
                                    : 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              )),
                        ]),
                  )
                ]),
          )
        : Container(
            color: const Color.fromRGBO(27, 31, 59, 1),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.25,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      html.window.open('https://wa.me/88997259807', "_blank");
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: SizedBox(
                                width: ResponsiveWidget.isLargeScreen(
                                            context) ||
                                        ResponsiveWidget.isMediumScreen(context)
                                    ? 50
                                    : 35,
                                child: const Image(
                                  image: AssetImage("assets/imgs/whatsapp.png"),
                                  fit: BoxFit.fitWidth,
                                  color: Colors.white,
                                )),
                          ),
                          Text("+55 88 9 9725-9807",
                              style: GoogleFonts.poppins(
                                fontSize: ResponsiveWidget.isLargeScreen(
                                            context) ||
                                        ResponsiveWidget.isMediumScreen(context)
                                    ? 16
                                    : 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              )),
                        ]),
                  ),
                  InkWell(
                    onTap: () {
                      html.window.open('mailto:breno.golo@gmail.com', "_blank");
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: SizedBox(
                                width: ResponsiveWidget.isLargeScreen(
                                            context) ||
                                        ResponsiveWidget.isMediumScreen(context)
                                    ? 50
                                    : 35,
                                child: const Image(
                                  image: AssetImage("assets/imgs/email.png"),
                                  fit: BoxFit.fitWidth,
                                  color: Colors.white,
                                )),
                          ),
                          Text("breno.golo@gmail.com",
                              style: GoogleFonts.poppins(
                                fontSize: ResponsiveWidget.isLargeScreen(
                                            context) ||
                                        ResponsiveWidget.isMediumScreen(context)
                                    ? 16
                                    : 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              )),
                        ]),
                  ),
                  InkWell(
                    onTap: () {
                      html.window.open(
                          'https://www.linkedin.com/in/brienu/', "_blank");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: SizedBox(
                              width: ResponsiveWidget.isLargeScreen(context) ||
                                      ResponsiveWidget.isMediumScreen(context)
                                  ? 50
                                  : 35,
                              child: const Image(
                                image: AssetImage("assets/imgs/linkedin.png"),
                                fit: BoxFit.fitWidth,
                                color: Colors.white,
                              )),
                        ),
                        Text("/in/brienu",
                            style: GoogleFonts.poppins(
                              fontSize: ResponsiveWidget.isLargeScreen(
                                          context) ||
                                      ResponsiveWidget.isMediumScreen(context)
                                  ? 16
                                  : 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      html.window.open(
                          'https://www.instagram.com/brienouu/', "_blank");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: SizedBox(
                              width: ResponsiveWidget.isLargeScreen(context) ||
                                      ResponsiveWidget.isMediumScreen(context)
                                  ? 50
                                  : 35,
                              child: const Image(
                                image: AssetImage("assets/imgs/insta.png"),
                                fit: BoxFit.fitWidth,
                                color: Colors.white,
                              )),
                        ),
                        Text("/brienouu",
                            style: GoogleFonts.poppins(
                              fontSize: ResponsiveWidget.isLargeScreen(
                                          context) ||
                                      ResponsiveWidget.isMediumScreen(context)
                                  ? 16
                                  : 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      html.window
                          .open('https://github.com/Escumalha', "_blank");
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: SizedBox(
                                width: ResponsiveWidget.isLargeScreen(
                                            context) ||
                                        ResponsiveWidget.isMediumScreen(context)
                                    ? 50
                                    : 35,
                                child: const Image(
                                  image: AssetImage("assets/imgs/github.png"),
                                  fit: BoxFit.fitWidth,
                                  color: Colors.white,
                                )),
                          ),
                          Text("/Escumalha",
                              style: GoogleFonts.poppins(
                                fontSize: ResponsiveWidget.isLargeScreen(
                                            context) ||
                                        ResponsiveWidget.isMediumScreen(context)
                                    ? 16
                                    : 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              )),
                        ]),
                  ),
                ],
              )
            ]),
          );
  }
}
