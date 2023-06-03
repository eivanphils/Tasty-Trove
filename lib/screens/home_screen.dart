import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
     static const routeName = 'home';

  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text('data'),
                  Text('data'),
                  Text('data'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}