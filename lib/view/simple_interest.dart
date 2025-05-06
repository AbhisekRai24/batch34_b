import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            SizedBox(height: 35), 
            Text("DashBoard"),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
        elevation: 0,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Add Two Numbers"),
            onTap: () => Navigator.pushNamed(context, '/add'),
          ),
          ListTile(
            title: Text("Area of Circle"),
            onTap: () => Navigator.pushNamed(context, '/circle'),
          ),
          ListTile(
            title: Text("Simple Interest"),
            onTap: () => Navigator.pushNamed(context, '/interest'),
          ),
          ListTile(
            title: Text("Palindrome Number"),
            onTap: () => Navigator.pushNamed(context, '/palindrome'),
          ),
        ],
      ),
    );
  }
}