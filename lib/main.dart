import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Shimmer Test App'),
          ),
          body: Shimmer.fromColors(
            baseColor: Colors.red,
            highlightColor: Colors.blue,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('This is a text widget in the body'),
                  SizedBox(height: 5),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.red,
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 200,
                    height: 50,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}
