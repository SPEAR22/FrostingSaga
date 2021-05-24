import 'dart:io';
import 'package:f_saga_admin/widgets/get_image.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SaveProduct extends StatefulWidget {
  final List<String> pathList;
  final bool isLoading;
  SaveProduct({this.pathList, this.isLoading});
  @override
  _SaveProductState createState() => _SaveProductState();
}

class _SaveProductState extends State<SaveProduct> {
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  Future<void> uploadFile(List<String> _paths) async {
    for (var i = 0; i < _paths.length; i++) {
      File file = File(_paths[i]);
      try {
        await firebase_storage.FirebaseStorage.instance
            .ref('images/$i')
            .putFile(file);
      } on firebase_core.FirebaseException catch (e) {
        Scaffold.of(context).showSnackBar(SnackBar(content: Text(e.message)));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    List<String> _paths = widget.pathList;
    bool _isLoading = widget.isLoading ?? false;
    return GestureDetector(
      onTap: () {
        setState(() {
          _isLoading = true;
        });
        uploadFile(_paths);
      },
      child: Container(
        height: 40.0,
        width: 100.0,
        decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.all(Radius.circular(12.0))),
        child: Stack(
          children: [
            Visibility(
              visible: _isLoading ? false : true,
              child: Center(
                child: Text("Save Product"),
              ),
            ),
            Visibility(
              visible: _isLoading,
              child: Center(
                child: SizedBox(
                    height: 30.0,
                    width: 30.0,
                    child: CircularProgressIndicator()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
