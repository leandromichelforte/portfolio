import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/view-models/texts.viewmodels.dart';

class HomeView extends StatefulWidget {
  final BoxConstraints constraints;
  final TextsViewModels textViewModels;
  const HomeView({
    Key? key,
    required this.constraints,
    required this.textViewModels,
  }) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: widget.constraints.maxHeight * .4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Bem-vindo :)",
              style: GoogleFonts.inconsolata(
                fontSize: widget.constraints.maxHeight * .05,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  " Meu portfolio",
                  style: GoogleFonts.inconsolata(
                    fontSize: widget.constraints.maxHeight * .05,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Text(
              "    App criado para mostrar o meu resumo profissional com a ferramenta que é minha principal stack, o Flutter.\n    Na barra lateral, você pode navegar entre cada seção para mais informações.",
              style: TextStyle(
                fontSize: widget.constraints.maxHeight * .025,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
