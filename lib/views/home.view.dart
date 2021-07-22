import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/view-models/texts.viewmodels.dart';
import 'package:slidable_bar/slidable_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextsViewModels textViewModels = TextsViewModels();
    final SlidableBarController sideBarController =
        SlidableBarController(initialStatus: false);

    void _openHomePage() {
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const HomeView(),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SlidableBar(
              slidableController: sideBarController,
              frontColor: Colors.black,
              clickerSize: 50,
              side: Side.left,
              backgroundColor: Colors.grey[200],
              size: constraints.maxWidth * .15,
              barChildren: [
                Container(
                  height: constraints.maxHeight * 0.95,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: constraints.maxHeight * 0.5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.home_rounded,
                                size: 30,
                              ),
                              onPressed: _openHomePage,
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.person,
                                size: 30,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Image.asset(
                                  'assets/images/business_icon.png'),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Image.asset(
                                  'assets/images/graduation_icon.png'),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Image.asset(
                                  'assets/images/language_icon.png'),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Image.asset('assets/images/star_icon.png'),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Image.asset('assets/images/@_icon.png'),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(
                            Icons.logout_rounded,
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                )
              ],
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                color: Colors.grey.shade200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Bem-vindo",
                      style: GoogleFonts.inconsolata(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "  Portfolio",
                          style: GoogleFonts.rajdhani(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "    App criado para mostrar o meu resumo profissional com a ferramenta que é minha principal stack, o Flutter.\n    Na barra lateral, você pode navegar entre cada seção para mais informações.",
                      style: GoogleFonts.rajdhani(
                        fontSize: 20,
                      ),
                    ),
                    ElevatedButton(
                      child: Text(
                          "Vamos lá?!\n${constraints.maxHeight}\n${constraints.maxWidth}"),
                      onPressed: () => sideBarController.reverseStatus(),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
