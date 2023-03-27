import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../src/responsive.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
      return Container(
        color: const Color.fromRGBO(27, 31, 59, 1),
        padding: ResponsiveWidget.isLargeScreen(context) ? const EdgeInsets.only(bottom: 20, left: 20, right: 20): const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ResponsiveWidget.isLargeScreen(context) ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(27, 31, 59, 1),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Text("Breno Mota",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w700)),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Text(
                          "Desenvolvedor Front-End e graduando em Ciência da Computação na Universidade Federal do Cariri.",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600)),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Text(
                          textAlign: TextAlign.justify,
                          "\nOfereço serviços de desenvolvimento mobile, landing pages e Windows Forms. Possuo experiência em Flutter, usando linguagem .dart, desenvolvida pela Google e uso de frameworks como React e NextJS, além de integrações com banco de dados SQL (PostgreSQL) e noSQL (DynamoDB).",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: 
                        const Color.fromRGBO(69, 74, 222, 0), width: 10),
                    borderRadius: BorderRadius.circular(1000)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 300, maxHeight: 300),
                      child: const Image(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/imgs/imgProfile.png")),
                    )),
              ),
            )
          ],
        ): Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: 
                        const Color.fromRGBO(69, 74, 222, 1), width: 10),
                    borderRadius: BorderRadius.circular(1000)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 400, maxHeight: 400),
                      child: const Image(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/imgs/imgProfile.png")),
                    )),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(27, 31, 59, 1),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Text("Desenvolvedor Front-End",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w700)),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Text(
                          "Graduando em Ciencia da Computação pela UFCA",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600)),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Text(
                          textAlign: TextAlign.justify,
                          "Experiência na área de desenvolvimento mobile, landing pages, WindowsForm. Possuindo foco no Framework Flutter, usando a linguagem .dart, linguagem desenvolvida pela goolge",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
  }
}
