import 'package:flutter/material.dart';
import 'package:simple_app/testing_page.dart';

class PageO extends StatelessWidget {
  const PageO({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          debugPrint('ElevatedButton ÇALIŞTI');
          Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) {
              return const TestingPage();
            }),
          );
        },
        child: const Text('ElevatedButton'),
      ),
    );
    
  }
}
