import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/view-models/texts.viewmodels.dart';

class ScholarView extends StatefulWidget {
  final BoxConstraints constraints;
  final TextsViewModels textViewModels;
  const ScholarView({
    Key? key,
    required this.textViewModels,
    required this.constraints,
  }) : super(key: key);

  @override
  _ScholarViewState createState() => _ScholarViewState();
}

class _ScholarViewState extends State<ScholarView> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
              "Vamos lá?!\n${widget.constraints.maxHeight}\n${widget.constraints.maxWidth}"),
          onPressed: () => null,
        ),
      ],
    );
  }
}
