// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class RotatedBoxWidgetS extends StatefulWidget {
  const RotatedBoxWidgetS({
    Key? key,
    this.width,
    this.height,
    required this.rotatedText,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String rotatedText;

  @override
  State<RotatedBoxWidgetS> createState() => _RotatedBoxWidgetState();
}

class _RotatedBoxWidgetState extends State<RotatedBoxWidgetS> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black, // Change box color to white
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0), // Top-left rounded
          bottomRight: Radius.circular(20.0), // Bottom-right rounded
        ), // Make box corners round
        border: Border.all(
          color: Color.fromARGB(160, 205, 25, 95), // Set border color to red
        ),
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
              color: Colors.white, // Change font color to black
            ),
          ),
        ),
      ),
    );
  }
}
