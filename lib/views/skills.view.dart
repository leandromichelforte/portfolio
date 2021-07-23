import 'package:flutter/material.dart';

class SkillsView extends StatefulWidget {
  final BoxConstraints constraints;

  const SkillsView({
    Key? key,
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
