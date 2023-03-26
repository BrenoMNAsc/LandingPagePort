import 'package:flutter/material.dart';
import 'package:landing_page/components/bottom.dart';
import 'package:landing_page/components/portContent.dart';
import 'package:landing_page/src/responsive.dart';
import 'package:landing_page/components/topBarContents.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/aboutMe.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ScrollController _controller;
  double pixels = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller.addListener(() {
      setState(() {
        pixels = _controller.position.pixels;
        print(_controller.position.pixels);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              backgroundColor: const Color.fromRGBO(27, 31, 59, 1),
              elevation: pixels >= 20 ? 3 : 0,
              title: Center(
                widthFactor: 3,
                child: Text(
                  'BRENO MOTA',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                  
                ),
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 70),
              child: TopBarContents(
                controller: _controller,
              ),
            ),
      drawer: ResponsiveWidget.isSmallScreen(context)
          ? NavigationDrawer(
              backgroundColor: const Color.fromRGBO(220, 225, 222, 0),
              elevation: 0,
              children: [
                InkWell(
                  child: Container(
                      padding: const EdgeInsets.all(8),
                      color: const Color.fromRGBO(27, 31, 59, 1),
                      child: Center(
                        child: Text(
                          "SOBRE MIM",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      )),
                  onTap: () {
                    _controller.animateTo(0,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeOut);
                  },
                ),
                InkWell(
                  child: Container(
                      padding: const EdgeInsets.all(8),
                      color: const Color.fromRGBO(27, 31, 59, 1),
                      child: Center(
                        child: Text(
                          "PORTFÓLIO",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      )),
                  onTap: () {
                    _controller.animateTo(720,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeOut);
                  },
                ),
                InkWell(
                  child: Container(
                      padding: const EdgeInsets.all(8),
                      color: const Color.fromRGBO(27, 31, 59, 1),
                      child: Center(
                        child: Text(
                          "CONTATO",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      )),
                  onTap: () {
                    _controller.animateTo(_controller.position.maxScrollExtent,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeOut);
                  },
                )
              ],
            )
          : null,
      backgroundColor: const Color.fromRGBO(27, 31, 59, 1),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          controller: _controller,
          child: Column(
            children: [
              const AboutMe(),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Center(
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(40),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "Portfólio",
                          style: GoogleFonts.poppins(
                              color: const Color.fromRGBO(31, 36, 33, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AnimatedOpacity(
                          duration: const Duration(milliseconds: 750),
                          opacity: pixels >= 100 ? 1.0 : 0.0,
                          child: AnimatedPadding(
                            padding:
                                EdgeInsets.only(left: pixels >= 100 ? 0 : 750),
                            duration: const Duration(milliseconds: 500),
                            child: (ResponsiveWidget.isMediumScreen(context) ||
                                    ResponsiveWidget.isSmallScreen(context))
                                ? Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                        Portfolio(
                                          name: "Deli da Persy - Sistema de estoque",
                                          desc:
                                              "Esse sistema foi desenvolvido usando WindowsForm (c#), sendo uma aplicação Windows. O projeto consistia em um sistema que fosse capaz de gerenciar o estoque de um café especializado em jogos de tabuleiro localizado em Juazeiro do Norte. Além disso, o sistema registrava as receitas e tirava automaticamente do estoque quando necessário. Por fim, o sistema era integrado com banco de dados (noSQL) da AWS, o DynamoDB.",
                                          images: "assets/imgs/placeHolder.png",
                                        ),
                                        Portfolio(
                                          name: "Cariri Delivery - Aplicativo mobile",
                                          desc:
                                              "Desenvolvimento mobile feito com base em uma interface de redesign feita no Figma. Trata-se de um aplicativo de delivery de comida para Android, usando Framework Flutter, com as telas de início, restaurante e menu do restaurante. Este aplicativo é completamente interativo e possui integração com uma MockAPI.",
                                          images: "assets/imgs/placeHolder.png",
                                        )
                                      ])
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                        Portfolio(
                                          name: "Deli da Persy - Sistema de estoque",
                                          desc:
                                              "Esse sistema foi desenvolvido usando WindowsForm (c#), sendo uma aplicação Windows. O projeto consistia em um sistema que fosse capaz de gerenciar o estoque de um café especializado em jogos de tabuleiro localizado em Juazeiro do Norte. Além disso, o sistema registrava as receitas e tirava automaticamente do estoque quando necessário. Por fim, o sistema era integrado com banco de dados (noSQL) da AWS, o DynamoDB.",
                                          images: "assets/imgs/placeHolder.png",
                                        ),
                                        Portfolio(
                                          name: "Cariri Delivery - Aplicativo mobile",
                                          desc:
                                              "Desenvolvimento mobile feito com base em uma interface de redesign feita no Figma. Trata-se de um aplicativo de delivery de comida para Android, usando Framework Flutter, com as telas de início, restaurante e menu do restaurante. Este aplicativo é completamente interativo e possui integração com uma MockAPI.",
                                          images: "assets/imgs/placeHolder.png",
                                        )
                                      ]),
                          )),
                      AnimatedOpacity(
                          duration: const Duration(milliseconds: 750),
                          opacity: pixels >= 450 ? 1.0 : 0.0,
                          child: AnimatedPadding(
                              padding: EdgeInsets.only(
                                  left: pixels >= 450 ? 0 : 750),
                              duration: const Duration(milliseconds: 500),
                              child: (ResponsiveWidget.isMediumScreen(
                                          context) ||
                                      ResponsiveWidget.isSmallScreen(context))
                                  ? Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                          Portfolio(
                                            name: "Tower of Necrolord - jogo",
                                            desc:
                                                "Projeto desenvolvido em Python com biblioteca Pygame para a disciplina de Laboratório do curso de Ciência da Computação da UFCA. O jogo é do gênero Tower Defense e sua engine foi feita do zero usando conceitos de programação orientada a objetos.*Todas as pixel arts, exceto fundo do menu, foram desenhados por mim para o jogo.",
                                            images:
                                                "assets/imgs/placeHolder.png",
                                          ),
                                          Portfolio(
                                            name: "Breno Mota - Landing page ",
                                            desc:
                                                "A landing page presente foi feita inteiramente no Flutter, trata-se de um site estático completamente responsivo para diferentes telas e com animações de scroll.",
                                            images: null,
                                          )
                                        ])
                                  : Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                          Portfolio(
                                            name: "Tower of Necrolord - jogo",
                                            desc:
                                                "Projeto desenvolvido em Python com biblioteca Pygame para a disciplina de Laboratório do curso de Ciência da Computação da UFCA. O jogo é do gênero Tower Defense e sua engine foi feita do zero usando conceitos de programação orientada a objetos.\n*Todas as pixel arts, exceto fundo do menu, foram desenhados por mim para o jogo.",
                                            images:
                                                "assets/imgs/placeHolder.png",
                                          ),
                                          Portfolio(
                                            name: "Breno Mota - Landing page ",
                                            desc:
                                                "A landing page presente foi feita inteiramente no Flutter, trata-se de um site estático completamente responsivo para diferentes telas e com animações de scroll.",
                                            images: null,
                                          )
                                        ])))
                    ]),
              ),
              const Bottom()
            ],
          ),
        ),
      ),
    );
  }
}
