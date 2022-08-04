import 'package:flutter/material.dart';
import 'package:rovapay/home.dart';
import 'package:rovapay/landingscreen.dart';

import '../utils/app_things.dart';

class Make_Payment extends StatefulWidget {
  const Make_Payment({Key? key}) : super(key: key);

  @override
  State<Make_Payment> createState() => _Make_PaymentState();
}

class _Make_PaymentState extends State<Make_Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        title: Text(
          "Make Payment",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text(
                "Wait for sales to enter amount",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: App_Things.getInputTextField(Icon(null), "\$0.00")),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text(
                "Description",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: App_Things.getInputTextField(
                    Icon(null), "What are you Paying For ?")),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text(
                "Shoprite IKeja Mall",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                "Mall & ART",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text(
                "Damilola Raymonds",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                "Sales",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
            GestureDetector(
                onTap: () {
                  Dialog errorDialog = Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    //this right here
                    child: Container(
                      height: 320.0,
                      width: 320.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Icon(
                              Icons.check_circle_outlined,color: Colors.blue,
                              size: 100,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              textAlign: TextAlign.center,
                              'Payment Successfull',
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              textAlign: TextAlign.center,
                              'your payment has been send successfully !',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10.0)),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                    new MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                        new LandingScreen()));
                              },
                              child: App_Things.getButton("Continue"))
                        ],
                      ),
                    ),
                  );
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => errorDialog);
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: App_Things.getButton("Pay \$60 Now"),
                )),

          ],
        ),
      ),
    );
  }
}
