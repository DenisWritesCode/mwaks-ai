import 'dart:io';

import 'package:flutter/material.dart';

StatefulWidget imageAndControls() {
  return const ImageAndControls();
}

class ImageAndControls extends StatefulWidget {
  const ImageAndControls({super.key});

  @override
  State<ImageAndControls> createState() => _ImageAndControlsState();
}

class _ImageAndControlsState extends State<ImageAndControls> {
  File? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Upload an image to scan!',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        const SizedBox(height: 20),
        Center(child: buildImage()),
        const SizedBox(height: 20),
        // Additional Widgets
        ElevatedButton(
          onPressed: () {
            // Placeholder for action
          },
          child: const Text('Pick Image'),
        ),
      ],
    );
  }

  Widget buildImage() => image != null
      ? Image.file(image!)
      : Icon(Icons.photo, size: 80, color: Colors.black);

  // Future pickImage() async {
  //   final file = await ImagePicker().getImage(source: ImageSource.gallery);
  //   setImage(File(file.path));
  // }

  // Future scanText() async {
  //   showDialog(
  //     context: context,
  //     child: Center(
  //       child: CircularProgressIndicator(),
  //     ),
  //   );

  //   final text = await FirebaseMLApi.recogniseText(image);
  //   setText(text);

  //   Navigator.of(context).pop();
  // }

  // void clear() {
  //   setImage(null);
  //   setText('');
  // }

  // void copyToClipboard() {
  //   if (text.trim() != '') {
  //     FlutterClipboard.copy(text);
  //   }
  // }

  // void setImage(File newImage) {
  //   setState(() {
  //     image = newImage;
  //   });
  // }

  // void setText(String newText) {
  //   setState(() {
  //     text = newText;
  //   });
  // }
}
