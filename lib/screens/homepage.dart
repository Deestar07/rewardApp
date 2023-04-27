import 'package:flutter/material.dart';
import 'package:rewards_app/screens/notifications.dart';
import 'package:rewards_app/screens/rewards_page.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.circle_notifications),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NotificationsPage()));

          },
          iconSize: 40,
        ),
        backgroundColor: Colors.green,
        title: Column(
          children: const [
            Text('SPAR' ,
            style: TextStyle(
              backgroundColor: Colors.red,
            ),),
            Text('rewards',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic
            ),),
          ],
        ),
        titleTextStyle: const TextStyle(
          fontSize: 30,
      ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.qr_code),
            iconSize: 40,
          ),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

      SizedBox(
        width:150 ,
        height: 110,
        child: Padding(
          padding: EdgeInsets.only(top:20),
          child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
          ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('Dorcas',
        style: TextStyle(
          fontSize: 30,
        ),),
        Text('299900002901165',
          style: TextStyle(
          ),),
      ],
    ),

    onPressed: ()  async{}
          ),
        ),
      ),

          SizedBox(
            width:150 ,
            height: 110,
            child: Padding(
              padding: const EdgeInsets.only(top:20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Your Reward Balance' ,
                      style: TextStyle(
                        fontSize: 15,
                      )),
                      Text(' ₦0' ,
                          style: TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  onPressed: ()  async{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RewardsPage()));
                  }
              ),
            ),
          ),
        ],
      ),
    );
  }
}
