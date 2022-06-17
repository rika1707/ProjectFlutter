import 'package:flutter/material.dart';
import 'package:flutter_2_app/views/menu.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => Home();
}

class Home extends State<Splash> {

  @override
  void initState() {
    //set state to load the new page
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) => const Menu()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width:300,
              height:300,
              child: Lottie.asset('assets/animations/car_wash_animation.json'),
            ),
            const SizedBox(height:20),
            const Text('Bienvenidos a Cars Wash',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
