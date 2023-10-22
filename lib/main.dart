import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/image_display.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageDisplay(),
    );
  }
}
