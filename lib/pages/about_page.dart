import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  int? linesOverflow = 2;
  Icon expandTextIcon = Icon(Icons.expand_more, color: Colors.redAccent);

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage('assets/img/avatar.png'),
                 ),
        Text('Grace Shadmi',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
                ),
               ),
        Text('Cross Platform Artist',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.white,
              ),
             ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Expanded(
          child: Text("My name is Grace, I am 1 year old. I am a former movie director, former photographer, former After Effects artist, former heavy machiney operator, dabbled a bit with music production, former soldier, even managed to be a customer relations manager in one of my first jobs. And now - learning how to develop apps. Here are some pictures I've taken in the last years.",
          overflow: TextOverflow.fade,
          maxLines: linesOverflow,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
           ),
          ),
        TextButton(onPressed: () {
              setState(() {
              if (linesOverflow == 2) {
                linesOverflow = 15;
                expandTextIcon = Icon(Icons.expand_less, color: Colors.redAccent,);
              } else {
                linesOverflow = 2;
                expandTextIcon = Icon(Icons.expand_more, color: Colors.redAccent,);
         }
        }
       );
      },
              child: expandTextIcon),
     ],
    )
   ],
  );
 }
}