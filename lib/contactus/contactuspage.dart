
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../constants.dart';
import '../../responsive.dart';
import '../Address.dart';
import '../followus.dart';
import 'componets/contactus.dart';
import 'componets/sendMessage.dart';
import 'package:footer/footer.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (Responsive.isDesktop(context))
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Sidebar
                      //contact us
                      Expanded(
                        flex: 2,
                        child: Container(
                            width: MediaQuery.of(context).size.width*0.7,
                            child: Contactus()),
                      ),
                      //message card
                      SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                            width: MediaQuery.of(context).size.width*0.3,
                            height: MediaQuery.of(context).size.height,
                            child: SendMessage()),
                      ),
                    ],),
                ),
              if (Responsive.isMobile(context)||Responsive.isTablet(context) )
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Sidebar

                      //contact us
                      Contactus(),
                      //message card
                      SendMessage(),
                    ],),
                ),
              SizedBox(height: 10,),
              Text("2023 © Plagremoverpro.com All rights reserved.",
                style: TextStyle(color:  kBgColor),),
              SizedBox(height: 10,),
              Footer(
                backgroundColor: Colors.black,
                child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      if (Responsive.isDesktop(context))
                        new Center(
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Container(
                                  height: 100.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 4.0),
                                        child: Text(
                                          "Contact Us",
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.white),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("mitInfo@plagremoverpro.com",
                                          style: TextStyle(color: Colors.white)),
                                    ],
                                  )),
                              Address(),
                              Follow(),
                            ],
                          ),
                        ),
                      if (Responsive.isMobile(context) || Responsive.isTablet(context))
                        new Center(
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              new Container(
                                  height: 100.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "  Contact Us",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("mitInfo@plagremoverpro.com"),
                                    ],
                                  )),
                              Address(),
                              Follow(),
                            ],
                          ),
                        ),
                      Text(
                        'Copyright ©2023, All Rights Reserved.',
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 12.0,
                            color: Colors.white),
                      ),
                      Text(
                        'Powered by MIT Programmer',
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 12.0,
                            color: Colors.white),
                      ),
                    ]),
                padding: EdgeInsets.all(10.0),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
