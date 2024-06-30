import 'package:flutter/material.dart';
import 'package:test_app/constants.dart';
import 'package:test_app/datamodel.dart';

class Source extends StatefulWidget {
  const Source({super.key});

  @override
  State<Source> createState() => _SourceState();
}

class _SourceState extends State<Source> {
  late Future<List<Product>> future;
  int _itemCount = 3;

  Future<List<Product>> fetchData() async {
    await Future.delayed(const Duration(seconds: 1));
    // Replace this with your actual JSON data fetching logic
    List<Map<String, dynamic>> jsonData = [
      {
        "id": 1,
        "title": "Garelu Chicken Curry",
        "cuisine": "Indian",
        "dish": "Andhra",
        "course": "Main Course",
        "category": "Others",
        "diet": "General/Balanced",
        "meals": "Breakfast, Brunch",
        "cooking": "Sauted, Deep Fried",
        "time": 90,
      },
    ];
    List<Product> data =
        jsonData.map((data) => Product.fromJson(data)).toList();
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Scaffold(
              body: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else if (snapshot.hasError) {
            return Scaffold(
                body: Center(child: Text('Error:${snapshot.error}')));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Scaffold(body: const Center(child: Text('No itmes found')));
          } else {
            final product = snapshot.data![0];
            return Center(
              child: TextButton(
                child: Text('pass'),
                onPressed: () {
                  Navigator.pushNamed(context, destination,
                      arguments: {_itemCount, product});
                },
              ),
            );
          }
        },
      ),
    );
  }
}
