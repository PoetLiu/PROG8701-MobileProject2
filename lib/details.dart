import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_two/watch.dart';
import 'checkout.dart';

class Details extends StatelessWidget {
  const Details({super.key, required this.watch});

  final Watch watch;
  final TextStyle textStyleBold = const TextStyle(fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(watch.brand),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.all(15),
            child: Center(
              // use listView to make it scrollable.
              child: ListView(
                children: [Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Hero(
                      tag: watch.photo,
                      child: Image(
                          width: 300,
                          height: 300,
                          image: AssetImage(
                            "images/${watch.photo}",
                          )),
                    ),
                    Text(watch.name,
                        style: textStyleBold,
                    ),
                    Text(watch.highlights.toUpperCase()),
                    Text("\$${watch.price}",
                        style: textStyleBold
                    ),
                    const SizedBox(height: 10),
                    FloatingActionButton.extended(
                      onPressed: () => {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => Checkout(watch: watch),
                      ),
                      ),
                      },
                      label: const Text("Buy Now", style: TextStyle(fontWeight: FontWeight.bold)),
                      icon: const Icon(Icons.shop),
                    ),
                    const SizedBox(height: 10),
                    Text(watch.description),
                  ])],
              )
            )));
  }
}
