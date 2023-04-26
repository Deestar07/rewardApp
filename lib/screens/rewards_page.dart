import 'package:flutter/material.dart';
import 'package:rewards_app/screens/homepage.dart';

class RewardsPage extends StatefulWidget {
  const RewardsPage({Key? key}) : super(key: key);

  @override
  State<RewardsPage> createState() => _RewardsPageState();
}

class _RewardsPageState extends State<RewardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 130,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));
          },
          iconSize: 20,
        ),
        backgroundColor: Colors.green,
        title: Column(
          children: const [
            Text('Rewards History',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
            Padding(
              padding: const EdgeInsets.only(top:20),
              child: Text('Your Current Reward Balance is',
              style: TextStyle(
                fontWeight: FontWeight.normal
              ),),
            ),
            Text('₦ 0',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold
            ),),
          ],
        ),
      ),
      body:Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
        Positioned(
          right: 0,
          left: 0,
          top:10 ,
          bottom: double.minPositive,
          child: Container(
            height: 20,
            child: const Center(
              child: Text('There is no shopping history.',
              style: TextStyle(
            fontSize: 20,
              ),
              ),
            ),
          ),
        ),

          const Positioned(
            bottom:10 ,
            child: Text('*Note: Points and receipts may take up to 48hrs to appear on the app.')
          )
        ]
      ),
    );
  }
}



