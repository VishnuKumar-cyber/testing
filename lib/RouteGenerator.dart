import 'package:flutter/material.dart';
import 'package:test_app/constants.dart';
import 'package:test_app/datamodel.dart';
import 'package:test_app/destination.dart';
import 'package:test_app/source.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case source:
        return MaterialPageRoute(builder: (context) => const Source());
      case destination:
        final args = settings.arguments as Map<String, dynamic>;
        final count = args['itemCount'] as int;
        final product = args['product'] as Product;
        return MaterialPageRoute(
            builder: (context) => Destination(
                  itemCount: count,
                  product: product,
                ));
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text("No Routes Defined"),
            ),
          ),
        );
    }
  }
}
