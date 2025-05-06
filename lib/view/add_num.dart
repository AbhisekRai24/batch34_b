import 'package:flutter/material.dart';

class AddNumber extends StatefulWidget {
  const AddNumber({super.key});

  @override
  State<AddNumber> createState() => _AddNumberState();
}

class _AddNumberState extends State<AddNumber> {
  int first = 0;
  int second = 0;
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            SizedBox(height: 30), // space above the title
            Text("Add Two Numbers"),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          TextField(
            onChanged: (value) {
              first = int.parse(value);
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Enter first no",
            ),
          ),
          SizedBox(height: 8),
          TextField(
            onChanged: (value) {
              second = int.parse(value);
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Enter second no",
            ),
          ),
          SizedBox(height: 8),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  result = first + second;
                });
              },
              child: Text("Add"),
            ),
          ),
          SizedBox(height: 8),

          Text("Result : $result", style: TextStyle(fontSize: 30)),
        ],
      ),
    );
  }
}