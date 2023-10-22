import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/calculatrice.dart';

class ImageDisplay extends StatefulWidget {
  const ImageDisplay({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ImageDisplayState createState() => _ImageDisplayState();
}

class _ImageDisplayState extends State<ImageDisplay> {
  bool showImage = false;

  void toggleImage() {
    setState(() {
      showImage = !showImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Display Image By Allan!'),
      ),
      body: Center(
        child: showImage
            ? Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 2),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp3Fh0u2T0qF_PlBhSmrw1vUNj3pzCR1my9EClwSjRew&s',
                    fit: BoxFit.cover,
                  ),
                ),
              )
            : const Calculatrice(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: toggleImage,
        child: Icon(showImage ? Icons.remove : Icons.add),
      ),
    );
  }
}
// Coded by "v" - Modification to the existing code