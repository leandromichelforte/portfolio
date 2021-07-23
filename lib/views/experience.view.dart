import 'package:flutter/material.dart';

class ExperienceView extends StatefulWidget {
  final BoxConstraints constraints;
  const ExperienceView({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  @override
  _ExperienceViewState createState() => _ExperienceViewState();
}

class _ExperienceViewState extends State<ExperienceView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text(
            "Tela 3\n${widget.constraints.maxHeight}\n${widget.constraints.maxWidth}"),
        onPressed: () => null,
      ),
    );
  }
}
