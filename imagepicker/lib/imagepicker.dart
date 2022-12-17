// ignore_for_file: prefer_const_constructors

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class imagepicker extends StatefulWidget {
  const imagepicker({Key? key}) : super(key: key);

  @override
  State<imagepicker> createState() => _imagepickerState();
}

class _imagepickerState extends State<imagepicker> {
  @override
  var imageFile;
  getImage() async {
    var pickedFile =
        (await ImagePicker().pickImage(source: ImageSource.gallery));
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
        // path = pickedFile.path;
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Image Picker')),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10, left: 20),
                child: Text(
                  "Select Image:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(50),
                  child: imageFile != null
                      ? InkWell(
                          onTap: () {
                            getImage();
                          },
                          child: Container(
                              // width: 90.0,
                              height: 200.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(color: Colors.black),
                                  // shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: FileImage(imageFile)))),
                        )
                      : Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                offset: const Offset(
                                  1.0,
                                  1.0,
                                ),
                                blurRadius: 3.0,
                              ),
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ),
                            ],
                          ),
                          width: double.infinity,
                          height: 150,
                          child: IconButton(
                            onPressed: () {
                              getImage();
                            },
                            icon: Icon(
                              Icons.add_circle_outline,
                              size: 50,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        )),
            ],
          ),
        ));
  }
}
