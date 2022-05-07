import 'package:flutter/material.dart';
import 'package:portfolio/util/util.dart';
import 'package:portfolio/widgets/contact_button.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatelessWidget {
  final projectsList=[
    {
      'title':'THE VAMPIRE DAIRIES',
      'subtitle':'Web Series',
      'image':'https://upload.wikimedia.org/wikipedia/commons/2/2e/Tvd_logo.PNG'
    },
    {
      'title':'THE ORIGINALS',
      'subtitle':'Web Series',
      'image':'data:image/jpeg;base64,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'},
     {
      'title':'TELL ME A STORY',
      'subtitle':'Web Series',
      'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTP6-hEELBO2WenkTDe4rlHwMQvM7Rb8KFc45q3aOWkTEgzJkY9nPcqatbZEFyOIiWkcYw&usqp=CAU',
    },
    ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Expanded(
          flex:2,
          child: Container(
          color: Color.fromARGB(133, 241, 238, 238),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Opacity(
                    opacity:0.9,
                    child: Image.asset('assets/stefan.jpg',width:900,height:590,
                    alignment: Alignment.centerRight,)),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Text('\n \n \n \n \n I\'m Stefan. \n An Actor and\n Director.',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize:44.5,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 146, 202, 248),
                            fontStyle: FontStyle.italic
                      ),),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left:120.0),
                            child: ContactButton(
                              buttonText: 'Drop me a line',
                              icon:Icon(Icons.mail_outline),
                              onPressed:(){
                                launchMailto();
                              },
                              ),
                          ),
                      ),
                      ],
                    )),
                ],
                
              ),
            ],
          ),
        )),
        SizedBox(width: 30,),
        Expanded(
          flex:3,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:100),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text('My Projects',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30),),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: projectsList.length,
                itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    children: [
                      Card(
                        elevation: 5,
                        child: Column(children: [
                          ListTile(
                            leading:Icon(Icons.work),
                            title: Text(projectsList[index]['title'],
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                      ),),
                            subtitle: Text(projectsList[index]['subtitle']),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.network(projectsList[index]['image']),
                            ),
                          )
                        ],)
                        )
                  ]),
                );
              },),
            )
          ],
        )
         ),
          SizedBox(width: 30,)
      ],
    );
  }
}

