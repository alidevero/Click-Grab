import 'package:flutter/material.dart';

class SmallReusableButton extends StatefulWidget {
  final Color buttonColor;
  final IconData buttonIcon;
  final Color iconColor;
  const SmallReusableButton({super.key , required this.buttonColor,required this.buttonIcon,required this.iconColor});

  @override
  State<SmallReusableButton> createState() => _SmallReusableButtonState();
}

class _SmallReusableButtonState extends State<SmallReusableButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: widget.buttonColor,
            minimumSize: const Size(50.0, 40.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9),
            )),
        child:  Icon(widget.buttonIcon,color: widget.iconColor,)
    );
  }
}
