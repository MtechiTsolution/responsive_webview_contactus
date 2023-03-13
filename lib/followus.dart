import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/svg.dart';

class Follow extends StatefulWidget {
  const Follow({Key? key}) : super(key: key);

  @override
  State<Follow> createState() => _FollowState();
}

class _FollowState extends State<Follow> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100.0,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text("Follow Us",style: TextStyle(fontSize: 20,color: Colors.white),),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    launch(
                        'https://web.facebook.com/profile.php?id=100090378737707');
                  },
                  child: Container(

                    height: 45.0,
                    width: 45.0,
                    child: Center(
                      child:Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0), // half of height and width of Image
                          ),
                          child: Container(
                              padding: EdgeInsets.all(7),
                              height: 35,
                              width: 35,
                              child: SvgPicture.asset("assets/icons/fb.svg",color: Colors.indigo[900],))),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    launch(
                        'https://www.instagram.com/programmermit/');

                  },
                  child: Container(
                    height: 45.0,
                    width: 45.0,

                    child: Center(
                      child:Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0), // half of height and width of Image
                          ),
                          child: Container(

                              padding: EdgeInsets.all(8),
                              height: 34,
                              width: 34,
                              child: SvgPicture.asset("assets/icons/insta.svg",color: Colors.indigo[900],))),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    launch(
                        'https://twitter.com/mit_programmer');
                  },
                  child: Container(
                    height: 45.0,
                    width: 45.0,
                    child: Center(
                      child:Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0), // half of height and width of Image
                          ),
                          child: Container(
                              padding: EdgeInsets.all(8),
                              height: 34,
                              width: 34,
                              child: SvgPicture.asset("assets/icons/feather_twitter.svg",color: Colors.indigo[900],))),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
    );
  }
}
