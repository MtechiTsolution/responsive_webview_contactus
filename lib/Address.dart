import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 100.0,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text("Address",style: TextStyle(fontSize: 20,color: Colors.white),),
            ),
            SizedBox(height: 10,),
            Text(
                "Building (63 ),Area 233, Street 281, Al-Khuwair South, P.O Box : 1075, Muscat,Oman ",
                textAlign:TextAlign.center,
                style: TextStyle(color: Colors.white)),
          ],
        )
    );
  }
}
