import 'package:advance_text_field/advance_text_field.dart';
import 'package:flutter/material.dart';
import 'package:responsive_webview_contactus/contactus/componets/submitButton.dart';

import '../../../constants.dart';
import '../../../responsive.dart';
class SendMessage extends StatelessWidget {
  const SendMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15),

        child: Column(children: [
          Container(
              margin: EdgeInsets.only(top: 30),

              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Text("Send us a Message ",style: TextStyle(color: Colors.black,
                          fontSize: 20,fontFamily: 'Releway',
                          fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 20,),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: kPrimaryColor), //<-- SEE HERE
                              ),
                              //border: OutlineInputBorder(),
                              labelText: 'Name',
                              hintText: 'Enter Your Name',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: kPrimaryColor), //<-- SEE HERE
                              ),

                              labelText: 'Email',
                              hintText: 'Enter Your Email Address',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      if (Responsive.isDesktop(context) ) ...[

                        AdvanceTextField(
                          width: MediaQuery.of(context).size.width*0.2,
                          backgroundColor: kPrimaryColor,
                          type: AdvanceTextFieldType.EDIT,
                          editLabel: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                          saveLabel: Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                          textHint: 'Something...',
                          onEditTap: () {},
                          onSaveTap: (text) {
                            print('value is: $text');
                          },
                        ),
                      ]
                      else if (Responsive.isMobile(context) || Responsive.isTablet(context))...[
                        AdvanceTextField(

                          width: MediaQuery.of(context).size.width*0.6,
                          backgroundColor: kPrimaryColor,
                          type: AdvanceTextFieldType.EDIT,
                          editLabel: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                          saveLabel: Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                          textHint: 'Something...',
                          onEditTap: () {},
                          onSaveTap: (text) {
                            print('value is: $text');
                          },
                        ),
                      ],


                      Align(
                          alignment: Alignment.bottomCenter,
                          child: ButtonSubmit()),
                    ],),
                ),
              )

          ),

        ],));
  }
}
