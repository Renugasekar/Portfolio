import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  final String buttonText;
  final Widget icon;
  final VoidCallback onPressed;
  const ContactButton({
    Key key, this.buttonText, this.icon, this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton.icon(
        style: TextButton.styleFrom(
          primary: Colors.white,
          textStyle:TextStyle(color: Colors.black),
          backgroundColor: Color.fromARGB(255, 36, 135, 221),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0))),
        onPressed:onPressed, 
        icon: icon,
        label:Text('$buttonText',
        style: TextStyle(color: Colors.white),)),
    );
  }
}
