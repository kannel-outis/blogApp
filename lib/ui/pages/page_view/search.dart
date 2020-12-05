import 'package:blog_app/constants/color.dart';
import 'package:blog_app/ui/customs/text_fields.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
          child: Column(
            children: [
              Row(children: [
                Text(
                  'Search',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: color1,
                  ),
                )
              ]),
              SizedBox(height: 20),
              CustomTextFormfield(labelName: 'Search')
            ],
          ),
        ),
      ),
    );
  }
}
