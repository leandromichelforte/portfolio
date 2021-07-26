import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/view-models/texts.viewmodels.dart';
import 'package:timelines/timelines.dart';

class ExperienceView extends StatefulWidget {
  final BoxConstraints constraints;
  final TextsViewModels textViewModels;
  const ExperienceView({
    Key? key,
    required this.constraints,
    required this.textViewModels,
  }) : super(key: key);

  @override
  _ExperienceViewState createState() => _ExperienceViewState();
}

class _ExperienceViewState extends State<ExperienceView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: widget.constraints.maxHeight * 1.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "  ${widget.textViewModels.aboutMeTitle}",
              style: GoogleFonts.rajdhani(
                fontSize: widget.constraints.maxHeight * .05,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              height: 200,
              width: 200,
              child: Timeline.tileBuilder(
                builder: TimelineTileBuilder.connected(
                  itemCount: widget.textViewModels.experience.length,
                  lastConnectorBuilder: (_) => Container(
                    child: DecoratedLineConnector(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.grey, Colors.grey[200]!],
                        ),
                      ),
                    ),
                  ),
                  connectorBuilder: (_, index, __) => SolidLineConnector(
                    color: Colors.black45,
                  ),
                  indicatorBuilder: (_, index) => DotIndicator(
                    color: Colors.green,
                  ),
                  contentsBuilder: (_, index) => Container(
                    padding: EdgeInsets.all(widget.constraints.maxHeight * .03),
                    child: Text(
                      "${index + 1}",
                    ),
                  ),
                ),
              ),
            ),
            Text(
                "${widget.constraints.maxHeight}\n${widget.constraints.maxWidth}")
          ],
        ),
      ),
    );
  }
}
