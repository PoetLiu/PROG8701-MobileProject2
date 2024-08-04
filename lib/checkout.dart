import 'package:flutter/material.dart';
import 'package:project_two/watch.dart';
import 'package:project_two/products.dart';

class Checkout extends StatelessWidget {
  final Watch watch;

  Checkout({required this.watch});

  final _formKey = GlobalKey<FormState>();

  String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    }
    return null;
  }

  String? _validateAddress(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your address';
    }
    return null;
  }

  String? _validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    }
    final phoneExp = RegExp(r'^\d{10}$');
    if (!phoneExp.hasMatch(value)) {
      return 'Please enter a valid 10-digit phone number';
    }
    return null;
  }

  String? _validateCreditCardNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your credit card number';
    }
    final ccExp = RegExp(r'^\d{16}$');
    if (!ccExp.hasMatch(value)) {
      return 'Please enter a valid 16-digit credit card number';
    }
    return null;
  }

  String? _validateCVV(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your CVV';
    }
    final cvvExp = RegExp(r'^\d{3}$');
    if (!cvvExp.hasMatch(value)) {
      return 'Please enter a valid 3-digit CVV';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                validator: _validateName,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Address'),
                validator: _validateAddress,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone Number'),
                keyboardType: TextInputType.phone,
                validator: _validatePhoneNumber,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Credit Card Number'),
                keyboardType: TextInputType.number,
                validator: _validateCreditCardNumber,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'CVV'),
                keyboardType: TextInputType.number,
                validator: _validateCVV,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Order')),
                    );
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Success'),
                          content: const Text('Your purchase was successful!'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Products(title: '',)),
                                      (Route<dynamic> route) => false,
                                );
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: const Text('Submit Order'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
