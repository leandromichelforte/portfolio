import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/view-models/texts.viewmodels.dart';

class AboutMeView extends StatefulWidget {
  final BoxConstraints constraints;
  final TextsViewModels textViewModels;
  const AboutMeView({
    Key? key,
    required this.constraints,
    required this.textViewModels,
  }) : super(key: key);

  @override
  _AboutMeViewState createState() => _AboutMeViewState();
}

class _AboutMeViewState extends State<AboutMeView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(
              widget.textViewModels.name,
              style: GoogleFonts.inconsolata(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              widget.textViewModels.role,
              style: GoogleFonts.inconsolata(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ],
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
