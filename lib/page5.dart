import 'package:flutter/material.dart';

class viewPicturePage extends StatefulWidget {
  const viewPicturePage({super.key,
    required this.txtTitle,
    required this.imageFile
  });
  final String imageFile;
  final String txtTitle;
  @override
  State<viewPicturePage> createState() => _viewPicturePageState();
}

class _viewPicturePageState extends State<viewPicturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(widget.txtTitle),
            Image.asset(widget.imageFile),
          ],
        ),
      ),
    );
  }
}
