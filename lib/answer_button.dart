import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({required this.text, this.onTap, super.key});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.black,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
