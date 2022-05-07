import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          color: Color.fromARGB(255, 255, 200, 195),
          child: Row(children: [
            TextButton.icon(onPressed: (){
              launch('https://facebook.com');
            }, 
            icon: Icon(FontAwesomeIcons.facebook,color:Colors.black), 
            label: Text('')),
             TextButton.icon(onPressed: (){
               launch('https://instagram.com');
             }, 
            icon: Icon(FontAwesomeIcons.instagram,color:Colors.black), 
            label: Text('')),
             TextButton.icon(onPressed: (){
               launch('https://twitter.com');
             }, 
            icon: Icon(FontAwesomeIcons.twitter,color:Colors.black), 
            label: Text('')),
          ]),
        )
      ],
    );
  }
  void _launchURl(String url) async =>
  await canLaunch(url) ? await launch(url):throw 'Could not launch $url';
}
