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
  void _showExperienceDialog(Map<String, dynamic> experience) {
    showDialog(
        context: context,
        builder: (dialogContext) {
          return AlertDialog(
            title: Column(
              children: [
                FittedBox(
                  child: Text(
                    "${experience['role']} - ${experience['company']}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "${experience['period']}",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            content: Container(
              height: widget.constraints.maxHeight * .3,
              width: widget.constraints.maxWidth,
              child: ListView.builder(
                  itemCount: experience['tasks'].length,
                  itemBuilder: (_, index) {
                    return ListTile(
                      title: Text("- ${experience['tasks'][index]}"),
                    );
                  }),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(dialogContext).pop(),
                child: Text(
                  "Fechar",
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.constraints.maxHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "  ${widget.textViewModels.experienceTitle}",
            style: GoogleFonts.inconsolata(
              fontSize: widget.constraints.maxHeight * .05,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            height: widget.constraints.maxHeight * .8,
            width: widget.constraints.maxWidth,
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
                connectorBuilder: (_, index, __) => Container(
                  height: widget.constraints.maxHeight * .045,
                  child: SolidLineConnector(
                    color: Colors.black45,
                  ),
                ),
                indicatorBuilder: (_, index) => ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.black87)),
                  onPressed: () => _showExperienceDialog(
                      widget.textViewModels.experience[index]),
                  child: Text(
                    "${widget.textViewModels.experience[index]['role']}",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
