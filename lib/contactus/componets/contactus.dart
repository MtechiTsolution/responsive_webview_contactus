import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class Contactus extends StatelessWidget {
  const Contactus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        // Text("Contact Us",style: TextStyle(color: Colors.black,
        //     fontSize: 20,fontFamily: 'Releway',
        //     fontWeight: FontWeight.bold
        // ),),
        Container(
          child: Image.asset(
            'assets/images/contt.png',
            width: 280.0,
            height: 280.0,
          ),
        ),
        Divider(
          height: 1,
          thickness: 1,
          color: kPrimaryColor,
        ),
        SizedBox(
          height: 10,
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Contact ",
                        style: TextStyle(
                            color: kBgColor,
                            fontSize: 20,
                            fontFamily: 'Releway',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 8.0, top: 8),
                                child: Icon(
                                  Icons.mail,
                                  color: kPrimaryColor,
                                  size: 22,
                                ),
                              ),
                            ),
                            TextSpan(
                              text: "mitInfo@plagremoverpro.com",
                              style: TextStyle(color: kBgColor, fontSize: 16),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () async {
                                  String email = Uri.encodeComponent(
                                      "mitInfo@plagremoverpro.com");
                                  String subject = Uri.encodeComponent(
                                      "Team MIT Programmer");
                                  String body = Uri.encodeComponent(
                                      "Hi! write your feedback here.....");
                                  print(subject); //output: Hello%20Flutter
                                  Uri mail = Uri.parse(
                                      "mailto:$email?subject=$subject&body=$body");
                                  if (await launchUrl(mail)) {
                                    //email app opened
                                  } else {
                                    //email app is not opened
                                  }
                                  launchUrl(mail);
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))),
              VerticalDivider(
                color: kPrimaryColor,
                thickness: 1,
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Contact with us",
                        style: TextStyle(
                            color: kBgColor,
                            fontSize: 20,
                            fontFamily: 'Releway',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          launch(
                              'https://web.facebook.com/profile.php?id=100090378737707');
                        },
                        child: Row(
                          children: [
                            Expanded(
                              child: new Image.asset(
                                'assets/icons/facebook.png',
                                width: 18,
                                height: 24,
                              ),
                            ),
                            Expanded(
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'Facebook',
                                        style: TextStyle(
                                            color: Colors.blue[900],
                                            fontSize: 16)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          launch(
                              'https://web.facebook.com/profile.php?id=100090378737707');
                        },
                        child: Row(
                          children: [
                            Expanded(
                              child: new Image.asset(
                                'assets/icons/linkedin.png',
                                width: 18,
                                height: 24,
                              ),
                            ),
                            Expanded(
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'Linkedin',
                                        style: TextStyle(
                                            color: Colors.blue[900],
                                            fontSize: 16)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          launch('https://twitter.com/mit_programmer');
                        },
                        child: Row(
                          children: [
                            Expanded(
                              child: new Image.asset(
                                'assets/icons/twitter.png',
                                width: 18,
                                height: 24,
                              ),
                            ),
                            Expanded(
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'Twitter',
                                        style: TextStyle(
                                            color: Colors.blue[900],
                                            fontSize: 16)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          height: 1,
          thickness: 1,
          color: kPrimaryColor,
        ),
        SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Registered Address ",
            style: TextStyle(
                color: kBgColor,
                fontSize: 20,
                fontFamily: 'Releway',
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Building (63 ),Area 233, Street 281, Al-Khuwair South, P.C: 135,P.O Box : 1075, Muscat,Oman",
          style: TextStyle(
            color: kBgColor,
            fontSize: 17,
            fontFamily: 'Releway',
          ),
        ),
      ],
    ));
  }
}
