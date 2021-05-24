import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class GetImage extends StatefulWidget {
  final List<String> pathList;
  GetImage({this.pathList});
  @override
  _GetImageState createState() => _GetImageState();
}

class _GetImageState extends State<GetImage> {
  final picker = ImagePicker();
  //List<PickedFile> _images = [];

  Future getImage(List<String> paths) async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        paths.add(pickedFile.path);
        Scaffold.of(context).showSnackBar(
            SnackBar(content: Text("Image selected successfully.")));
      } else {
        Scaffold.of(context)
            .showSnackBar(SnackBar(content: Text("No image selected.")));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> _paths = widget.pathList;
    return GestureDetector(
      onTap: () {
        getImage(_paths);
      },
      child: Container(
        height: 40.0,
        width: 100.0,
        decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.all(Radius.circular(12.0))),
        child: Center(
          child: Text("Upload Images"),
        ),
      ),
    );
  }
}
