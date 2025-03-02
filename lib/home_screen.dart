import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Auction Details')),
      body: Center(child: Text('Auction details and bidding options will be shown here.')),
    );
  }
}
