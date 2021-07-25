import 'package:flutter/material.dart';
import 'package:portfolio/view-models/texts.viewmodels.dart';

class ContactView extends StatefulWidget {
  final BoxConstraints constraints;
  final TextsViewModels textViewModels;
  const ContactView({
    Key? key,
    required this.textViewModels,
    required this.constraints,
  }) : super(key: key);

  @override
  _ContactViewState createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text(
            "Tela 6\n${widget.constraints.maxHeight}\n${widget.constraints.maxWidth}"),
        onPressed: () => null,
      ),
    );
  }
}
