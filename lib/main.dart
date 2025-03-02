import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'auction_details_screen.dart';
import 'profile_screen.dart';
import 'admin_dashboard.dart';

void main() {
  runApp(AuctionApp());
}

class AuctionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auction System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [HomeScreen(), AuctionDetailsScreen(), ProfileScreen(), AdminDashboard()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _currentIndex,
            onDestinationSelected: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            labelType: NavigationRailLabelType.all,
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.home, color: Colors.blue),
                selectedIcon: Icon(Icons.home, color: Colors.red),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.gavel, color: Colors.blue),
                selectedIcon: Icon(Icons.gavel, color: Colors.red),
                label: Text('Auction'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.person, color: Colors.blue),
                selectedIcon: Icon(Icons.person, color: Colors.red),
                label: Text('Profile'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.admin_panel_settings, color: Colors.blue),
                selectedIcon: Icon(Icons.admin_panel_settings, color: Colors.red),
                label: Text('Admin'),
              ),
            ],
          ),
          Expanded(
            child: _screens[_currentIndex],
          ),
        ],
      ),
    );
  }
}