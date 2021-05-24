import 'package:f_saga_admin/widgets/custom_form_field.dart';
import 'package:f_saga_admin/widgets/get_image.dart';
import 'package:f_saga_admin/widgets/save_product.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imgPaths = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.all(16.0),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomFormField(),
            CustomFormField(),
            Padding(padding: EdgeInsets.all(24.0)),
            GetImage(
              pathList: imgPaths,
            ),
            Padding(padding: EdgeInsets.all(24.0)),
            SaveProduct(
              pathList: imgPaths,
              isLoading: false,
            )
          ],
        ),
      ),
    ));
  }
}
