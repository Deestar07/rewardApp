import 'package:flutter/material.dart';
import 'package:rewards_app/screens/homepage.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));
          },
          iconSize: 20,
        ),
        backgroundColor: Colors.green,
        title: const Text('Notifications'),
      ),
      body:Container(
        child: (
        const Center(
          child: Text('There are no notifications.',
          style: TextStyle(
            fontSize: 20,
          ),
          ),
        )
        ),
      ),
    );
  }
}
