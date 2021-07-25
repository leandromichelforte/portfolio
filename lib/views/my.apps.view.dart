import 'package:flutter/material.dart';
import 'package:portfolio/view-models/texts.viewmodels.dart';

class MyApps extends StatefulWidget {
  final BoxConstraints constraints;
  final TextsViewModels textViewModels;
  const MyApps({
    Key? key,
    required this.constraints,
    required this.textViewModels,
  }) : super(key: key);

  @override
  _MyAppsState createState() => _MyAppsState();
}

class _MyAppsState extends State<MyApps> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          "Tela 7\n${widget.constraints.maxHeight}\n${widget.constraints.maxWidth}"),
    );
  }
}
