// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/src/responsive.dart';

// ignore: must_be_immutable
class Portfolio extends StatelessWidget {
  String name;
  String desc;
  String? images;
  String? image2;
  Portfolio(
      {super.key,
      required this.name,
      required this.desc,
      required this.images,
      required this.image2});

  @override
  Widget build(BuildContext context) {
    if(images == null) images = "assets/imgs/placeHolder.png";
    if(image2 == null) image2 ="assets/imgs/placeHolder.png";

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color.fromRGBO(237, 242, 244, 1),
        ),
        padding: const EdgeInsets.all(20),
        width: ResponsiveWidget.isLargeScreen(context)
            ? MediaQuery.of(context).size.width * 0.45
            : MediaQuery.of(context).size.width,
        height: ResponsiveWidget.isMediumScreen(context) ||
                ResponsiveWidget.isLargeScreen(context)
            ? MediaQuery.of(context).size.height * 0.4
            : null,
        child: (ResponsiveWidget.isMediumScreen(context) ||
                ResponsiveWidget.isLargeScreen(context))
            ? Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: ResponsiveWidget.isLargeScreen(context)
                              ? MediaQuery.of(context).size.width * 0.225
                              : MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                              textAlign: TextAlign.left,
                              name,
                              style: GoogleFonts.poppins(
                                  fontSize:
                                      ResponsiveWidget.isMediumScreen(context)
                                          ? 20
                                          : 16,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromRGBO(27, 31, 59, 1))),
                        ),
                        Container(
                          width: ResponsiveWidget.isLargeScreen(context)
                              ? MediaQuery.of(context).size.width * 0.225
                              : MediaQuery.of(context).size.width * 0.5,
                          child: Text(desc,
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.poppins(
                                  fontSize:
                                      ResponsiveWidget.isMediumScreen(context)
                                          ? 16
                                          : 14,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(27, 31, 59, 1))),
                        ),
                      ]),
                ),
                Flexible(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image(
                      image: AssetImage(images!),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ])
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: SelectableText(
                          textAlign: TextAlign.left,
                          name,
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(27, 31, 59, 1))),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: SelectableText(desc,
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(27, 31, 59, 1))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: const Image(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1596854407944-bf87f6fdd49e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGdhdG98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ]),
      ),
    );
  }
}
