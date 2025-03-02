// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class RotatedBoxWidget extends StatefulWidget {
  const RotatedBoxWidget({
    Key? key,
    this.width,
    this.height,
    required this.rotatedText,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String rotatedText;

  @override
  State<RotatedBoxWidget> createState() => _RotatedBoxWidgetState();
}

class _RotatedBoxWidgetState extends State<RotatedBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Change box color to white
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0), // Top-left rounded
          bottomRight: Radius.circular(20.0), // Bottom-right rounded
        ), // Make box corners round
      ),
      child: RotatedBox(
        quarterTurns: 3,
        child: Center(
          child: Text(
            widget.rotatedText,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black, // Change font color to black
            ),
          ),
        ),
      ),
    );
  }
}
