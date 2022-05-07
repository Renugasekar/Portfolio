import 'package:flutter/material.dart';
import 'package:portfolio/util/util.dart';
import 'package:portfolio/widgets/body.dart';
import 'package:portfolio/widgets/button_row.dart';
import 'package:portfolio/widgets/contact_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Portfolio extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title:Row(
          children: const [
            CircleAvatar(
              radius: 26,
              backgroundImage: NetworkImage
              ('https://data.whicdn.com/images/354291413/original.jpg?t=1616873111')
            ),
            SizedBox(
              width: 10,
            ),
            Text('Stefan Salvatore',
            style:TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic
            )),
          ],
          ),
          actions: [
            ContactButton(
              buttonText: 'Contact me',
              icon:Icon(Icons.send_sharp,color: Colors.white,),
              onPressed: (){
               launchMailto();
              },
            ),
          ],
        ),
        body:Stack(
          children: [
            Body(),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child:ButtonRow(),
              )),
          ],
        )
    );
  }
}

