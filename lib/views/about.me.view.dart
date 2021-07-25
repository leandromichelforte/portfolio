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
    return SingleChildScrollView(
      child: Container(
        height: widget.constraints.maxHeight * 1.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  widget.textViewModels.name,
                  style: GoogleFonts.inconsolata(
                    fontSize: widget.constraints.maxHeight * .05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.textViewModels.role,
                  style: GoogleFonts.inconsolata(
                    fontSize: widget.constraints.maxHeight * .025,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "  ${widget.textViewModels.aboutMeTitle}",
                  style: GoogleFonts.rajdhani(
                    fontSize: widget.constraints.maxHeight * .05,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Text(
              "    ${widget.textViewModels.aboutMe}",
              style: GoogleFonts.rajdhani(
                fontSize: widget.constraints.maxHeight * .025,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
