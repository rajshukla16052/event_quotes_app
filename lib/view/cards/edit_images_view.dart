import 'dart:typed_data';

import 'package:event_club_app/res/image_editor_tool/crop_view.dart';
import 'package:event_club_app/view/pages/download_view.dart';
import 'package:flutter/material.dart';
import 'package:image_editor/image_editor.dart';

class EditImagesView extends StatefulWidget {
  const EditImagesView({
    super.key,
  });

  @override
  State<EditImagesView> createState() => _EditImagesViewState();
}

class _EditImagesViewState extends State<EditImagesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Image'),
        actions: [
          InkWell(
              // onTap: () {
              //   showDialog(
              //       context: context,
              //       builder: (_) => AlertDialog(
              //         title: Text(
              //           'Download Now',
              //           style: TextStyle(
              //             decoration: TextDecoration.underline,
              //           ),
              //         ),
              //
              //       )
              //   );
              // },
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DownloadsView()));
              },
              child: Icon(Icons.more_vert))
        ],
      ),
      body: Column(
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.network(
                'https://images.unsplash.com/photo-1710125888693-deb4fd7516b5?q=80&w=1904&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                width: 200,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),

          // if (imageData != null) Image.memory(imageData!),
          const SizedBox(height: 16),
          // ElevatedButton(
          //   child: const Text("Single image editor"),
          //   onPressed: () async {
          //     var editedImage = await Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => EditImagesView(
          //           image: imageData,
          //         ),
          //       ),
          //     );
          //
          //     // replace with edited image
          //     if (editedImage != null) {
          //       imageData = editedImage;
          //       setState(() {});
          //     }
          //   },
          // ),
        ],
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 70,
        color: Colors.black,
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _bottomBarItem(
                  Icons.crop_rotate,
                  'Crop',
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CropView()));
                  },
                ),
                _bottomBarItem(
                  Icons.brush,
                  'Brush',
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Container()));
                  },
                ),
                _bottomBarItem(
                  Icons.text_format,
                  'Text',
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Container()));
                  },
                ),
                _bottomBarItem(
                  Icons.format_paint,
                  'Paints',
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Container()));
                  },
                ),
                _bottomBarItem(
                  Icons.flip,
                  'Flip',
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Container()));
                  },
                ),
                _bottomBarItem(
                  Icons.rotate_90_degrees_ccw,
                  'Rotate',
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Container()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _bottomBarItem(IconData icon, String title, {required onPress}) {
    return InkWell(
      onTap: onPress,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
