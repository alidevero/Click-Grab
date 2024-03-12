import 'package:flutter/material.dart';

import '../colors_variables/colors.dart';


class LargerReusableButton extends StatefulWidget {

  final VoidCallback? onPressFunction;
  final Color largerButtonColor;
  final String largerButtonText;
  final Color buttonTextColor;

  const LargerReusableButton({super.key,
  required this.largerButtonColor,
    required this.largerButtonText,
    required this.onPressFunction,
    required this.buttonTextColor,

  });

  @override
  State<LargerReusableButton> createState() => _LargerReusableButtonState();
}

class _LargerReusableButtonState extends State<LargerReusableButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressFunction,
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.largerButtonColor,
        minimumSize: const Size(350.0, 60.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(
        widget.largerButtonText,
        style: TextStyle(color: widget.buttonTextColor,fontSize: 15,fontWeight: FontWeight.w100),
      ),
    );
  }
}
