import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText(
    this.text, {
    super.key,
    this.transparency = 230,
    this.fontSize = 25,
  });
  final int transparency;
  final String text;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.lato(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(transparency, 255, 255, 255),
      ),
    );
  }
}
