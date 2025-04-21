import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FontAwesomeIcones extends StatelessWidget {
  const FontAwesomeIcones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('FONT AWESOM ICONS'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Material(child: InkWell(child: FaIcon(FontAwesomeIcons.amazon,size: 40,color: Colors.deepOrange,)))
          ],
        ),
      ),
    );
  }
}