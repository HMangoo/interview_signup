import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/app_layout.dart';

class ImageBox extends StatefulWidget {
  const ImageBox({Key? key, required this.size, required this.color})
      : super(key: key);

  final double size;
  final Color color;

  @override
  State<ImageBox> createState() => _ImageBoxState();
}

class _ImageBoxState extends State<ImageBox> {
  File? pickedImage;

  Future pickImage() async {
    final imagePicker = ImagePicker();
    final pickedImageFile =
        await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedImageFile == null) return;

    setState(() {
      pickedImage = File(pickedImageFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => pickImage(),
      child: Container(
        height: AppLayout.getHeight(widget.size),
        width: AppLayout.getWidth(widget.size),
        decoration: BoxDecoration(border: Border.all(color: widget.color)),
        child: pickedImage != null
            ? Image(image: FileImage(pickedImage!))
            : Center(
                child: Icon(Icons.add, color: Colors.grey.shade400),
              ),
      ),
    );
  }
}
