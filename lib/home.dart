import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:mwaks_ai/widgets/image_and_controls.dart';
import 'package:mwaks_ai/widgets/image_controls.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:mwaks_ai/widgets/image_controls.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<ProfileScreen>(
                  builder: (context) => ProfileScreen(
                    appBar: AppBar(
                      title: const Text('User Profile'),
                    ),
                    actions: [
                      SignedOutAction((context) {
                        Navigator.of(context).pop();
                      })
                    ],
                    children: [
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.all(2),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Text(
                            'Lorem Ipsum',
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment:
            CrossAxisAlignment.center, // Center items horizontally
        children: [
          Text(
            'Mwaks AI!',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          ImageControls(
            onClickedPickImage: _onClickedPickImage,
            onClickedScanText: _onClickedScanText,
            onClickedClear: _onClickedClear,
            key: ObjectKey('image_controls'),
          ),
          // const ImageAndControls(),
          // const ImagePicker(key: ObjectKey('image_picker')),
          const SignOutButton(),
        ],
      ),
    );
  }

  void _onClickedPickImage() {
    print('Pick Image Clicked');
  }

  void _onClickedScanText() {
    print('Scan For Text Clicked');
  }

  void _onClickedClear() {
    print('Clear Clicked');
  }
}
