import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/view-models/texts.viewmodels.dart';
import 'package:portfolio/views/about.me.view.dart';
import 'package:portfolio/views/contact.view.dart';
import 'package:portfolio/views/experience.view.dart';
import 'package:portfolio/views/home.view.dart';
import 'package:portfolio/views/my.apps.view.dart';
import 'package:portfolio/views/scholar.view.dart';
import 'package:portfolio/views/skills.view.dart';

class ScaffoldView extends StatelessWidget {
  const ScaffoldView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
    final PageController _pageController = PageController(initialPage: 0);
    TextsViewModels textViewModels = TextsViewModels();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
            CircleAvatar(
              radius: 12,
              backgroundColor: Colors.transparent,
              child: Image.asset('assets/images/mobile_app_icon.png'),
            ),
          ],
          color: Colors.grey[200]!,
          buttonBackgroundColor: Colors.transparent,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) => _pageController.animateToPage(index,
              duration: Duration(milliseconds: 300), curve: Curves.easeInOut),
          letIndexChange: (index) => true,
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  child: Stack(
                    children: [
                      Positioned(
                        left: constraints.maxWidth * .05,
                        top: constraints.maxHeight * .015,
                        height: constraints.maxHeight * .03,
                        child: Opacity(
                          opacity: .3,
                          child: Image.asset(
                            'assets/images/development_bg_icon.png',
                          ),
                        ),
                      ),
                      Positioned(
                        left: constraints.maxWidth * .7,
                        top: constraints.maxHeight * .07,
                        height: constraints.maxHeight * .03,
                        child: Opacity(
                          opacity: .3,
                          child: Image.asset(
                            'assets/images/coffee_bg_icon.png',
                          ),
                        ),
                      ),
                      Positioned(
                        left: constraints.maxWidth * .4,
                        top: constraints.maxHeight * .18,
                        height: constraints.maxHeight * .03,
                        child: Opacity(
                          opacity: .3,
                          child: Image.asset(
                            'assets/images/idea_bg_icon.png',
                          ),
                        ),
                      ),
                      Positioned(
                        left: constraints.maxWidth * .2,
                        top: constraints.maxHeight * .3,
                        height: constraints.maxHeight * .03,
                        child: Opacity(
                          opacity: .3,
                          child: Image.asset(
                            'assets/images/find_bug_bg_icon.png',
                          ),
                        ),
                      ),
                      Positioned(
                        left: constraints.maxWidth * .5,
                        top: constraints.maxHeight * .35,
                        height: constraints.maxHeight * .03,
                        child: Opacity(
                          opacity: .3,
                          child: Image.asset(
                            'assets/images/programming_bg_icon.png',
                          ),
                        ),
                      ),
                      Positioned(
                        top: constraints.maxHeight * .5,
                        height: constraints.maxHeight * .03,
                        child: Opacity(
                          opacity: .3,
                          child: Image.asset(
                            'assets/images/coffee_bg_icon.png',
                          ),
                        ),
                      ),
                      Positioned(
                        left: constraints.maxWidth * .4,
                        top: constraints.maxHeight * .6,
                        height: constraints.maxHeight * .03,
                        child: Opacity(
                          opacity: .3,
                          child: Image.asset(
                            'assets/images/programming_bg_icon.png',
                          ),
                        ),
                      ),
                      Positioned(
                        left: constraints.maxWidth * .75,
                        top: constraints.maxHeight * .7,
                        height: constraints.maxHeight * .03,
                        child: Opacity(
                          opacity: .3,
                          child: Image.asset(
                            'assets/images/development_bg_icon.png',
                          ),
                        ),
                      ),
                      Positioned(
                        left: constraints.maxWidth * .2,
                        top: constraints.maxHeight * .8,
                        height: constraints.maxHeight * .03,
                        child: Opacity(
                          opacity: .3,
                          child: Image.asset(
                            'assets/images/idea_bg_icon.png',
                          ),
                        ),
                      ),
                      Positioned(
                        left: constraints.maxWidth * .7,
                        top: constraints.maxHeight * .9,
                        height: constraints.maxHeight * .03,
                        child: Opacity(
                          opacity: .3,
                          child: Image.asset(
                            'assets/images/find_bug_bg_icon.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: constraints.maxHeight * 0.01,
                      horizontal: constraints.maxWidth * 0.04),
                  child: PageView(
                    physics: NeverScrollableScrollPhysics(),
                    controller: _pageController,
                    children: [
                      HomeView(
                          constraints: constraints,
                          textViewModels: textViewModels),
                      AboutMeView(
                          constraints: constraints,
                          textViewModels: textViewModels),
                      ExperienceView(
                          constraints: constraints,
                          textViewModels: textViewModels),
                      ScholarView(
                          constraints: constraints,
                          textViewModels: textViewModels),
                      SkillsView(
                          constraints: constraints,
                          textViewModels: textViewModels),
                      ContactView(
                          constraints: constraints,
                          textViewModels: textViewModels),
                      MyApps(
                          constraints: constraints,
                          textViewModels: textViewModels),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
