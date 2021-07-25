import 'package:flutter/material.dart';
import 'package:portfolio/view-models/texts.viewmodels.dart';

class SkillsView extends StatefulWidget {
  final BoxConstraints constraints;
  final TextsViewModels textViewModels;
  const SkillsView({
    Key? key,
    required this.textViewModels,
    required this.constraints,
  }) : super(key: key);

  @override
  _SkillsViewState createState() => _SkillsViewState();
}

class _SkillsViewState extends State<SkillsView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text(
            "Tela 5\n${widget.constraints.maxHeight}\n${widget.constraints.maxWidth}"),
        onPressed: () => null,
      ),
    );
  }
}
