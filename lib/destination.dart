import 'package:flutter/material.dart';
import 'package:test_app/datamodel.dart';

class Destination extends StatefulWidget {
  final int itemCount;
  final Product product;
  const Destination(
      {super.key, required this.itemCount, required this.product});

  @override
  State<Destination> createState() => _DestinationState();
}

class _DestinationState extends State<Destination> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Success'),
      ),
    );
  }
}
