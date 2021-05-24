import 'package:f_saga_admin/widgets/get_image.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Text("Name:"),
        Padding(padding: EdgeInsets.all(8.0)),
        Container(
          child: TextFormField(),
          width: width * 0.75,
        ),
      ],
    );
  }
}
