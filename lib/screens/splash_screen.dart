import 'package:flutter/material.dart';
import 'package:rewards_app/screens/homepage.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));

    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
    body: SizedBox(
      width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/spar8.jpg"),
                        fit: BoxFit.cover
                    ))),

          ],
        ),

    ),
    );
  }
}

