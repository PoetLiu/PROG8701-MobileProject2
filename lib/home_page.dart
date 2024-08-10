import 'package:flutter/material.dart';
import 'products.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'images/home.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: FloatingActionButton.extended(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Products(title: 'Products')),
                  );
                },
                label: const Text("Enter", style: TextStyle(fontWeight: FontWeight.bold)),
                icon: const Icon(Icons.login),
              ),
            ),
          ),
        ],
      ),
    );
  }
}