import 'package:flutter/material.dart';

class ContactView extends StatefulWidget {
  final BoxConstraints constraints;
  const ContactView({
    Key? key,
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
