import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/view-models/texts.viewmodels.dart';
import 'package:portfolio/views/about.me.view.dart';
import 'package:portfolio/views/contact.view.dart';
import 'package:portfolio/views/experience.view.dart';
import 'package:portfolio/views/scholar.view.dart';
import 'package:portfolio/views/skills.view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
    final PageController _pageController = PageController(initialPage: 0);
    TextsViewModels textViewModels = TextsViewModels();

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 50.0,
          items: <Widget>[
            Icon(
              Icons.home_rounded,
              size: 30,
            ),
            Icon(
              Icons.person_rounded,
              size: 30,
            ),
            CircleAvatar(
              radius: 12,
              backgroundColor: Colors.transparent,
              child: Image.asset('assets/images/business_icon.png'),
            ),
            CircleAvatar(
              radius: 12,
              backgroundColor: Colors.transparent,
              child: Image.asset('assets/images/graduation_icon.png'),
            ),
            CircleAvatar(
              radius: 12,
              backgroundColor: Colors.transparent,
              child: Image.asset('assets/images/star_icon.png'),
            ),
            CircleAvatar(
              radius: 12,
              backgroundColor: Colors.transparent,
              child: Image.asset('assets/images/@_icon.png'),
            ),
            // CircleAvatar(
            //   radius: 12,
            //   backgroundColor: Colors.transparent,
            //   child: Image.asset('assets/images/language_icon.png'),
            // ),
            CircleAvatar(
              radius: 12,
              backgroundColor: Colors.transparent,
              child: Image.asset('assets/images/mobile_app_icon.png'),
            ),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.grey[200]!,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) => _pageController.animateToPage(index,
              duration: Duration(milliseconds: 300), curve: Curves.easeInOut),
          letIndexChange: (index) => true,
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              color: Colors.grey[200],
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: _pageController,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Bem-vindo :)",
                        style: GoogleFonts.inconsolata(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "  Meu portfolio",
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
                        onPressed: () => null,
                      ),
                    ],
                  ),
                  AboutMeView(
                      constraints: constraints, textViewModels: textViewModels),
                  ExperienceView(constraints: constraints),
                  ScholarView(constraints: constraints),
                  SkillsView(constraints: constraints),
                  ContactView(constraints: constraints),
                  Center(
                    child: ElevatedButton(
                      child: Text(
                          "Tela 7\n${constraints.maxHeight}\n${constraints.maxWidth}"),
                      onPressed: () => null,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
