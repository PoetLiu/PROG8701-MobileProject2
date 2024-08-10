import 'package:flutter/material.dart';
import 'home_page.dart';

class CoverPage extends StatelessWidget {
  final TextStyle textStyleBold = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cover Page'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey[200],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Xingda Zhou 8918222', style: textStyleBold),
              Text('Peng Liu 8903532', style: textStyleBold),
              Text('Sajith Koovaparambil 8940367', style: textStyleBold),
              const SizedBox(height: 20),
              FloatingActionButton.extended(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                label: const Text("Welcome", style: TextStyle(fontWeight: FontWeight.bold)),
                icon: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ),
    );
  }
}