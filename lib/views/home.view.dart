import 'package:flutter/material.dart';
import 'package:portfolio/view-models/texts.viewmodels.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextsViewModels textViewModels = TextsViewModels();
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            child: Center(
              child: Text("My homepage"),
            ),
          );
        },
      ),
    );
  }
}
