import 'package:flutter/material.dart';
import 'package:rovapay/authentication/signup.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF034e97),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 250, top: 150),
                child: Image.asset("assets/images/iconname.png"),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new SignUpScreen())),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(
                    width: 400,
                    height: 60,
                    child: Center(
                        child: Text(
                      'Get Started',
                      style: TextStyle(fontSize: 20),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
