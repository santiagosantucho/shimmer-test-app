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
            backgroundColor: Colors.black,
            title: Text('Shimmer Test App'),
          ),
          backgroundColor: Colors.black,
          body: ShimmerLogo()
        ),
    );
  }

}

class ShimmerLogo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 300,
        child: Shimmer.fromColors(
            child: Image.asset('logo.png'),
            baseColor: Colors.black,
            highlightColor: Colors.white,
            period: Duration(seconds: 2),
        ),
      ),
    );
  }

}



