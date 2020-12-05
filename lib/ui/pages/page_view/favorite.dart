import 'package:blog_app/constants/color.dart';
import 'package:blog_app/ui/customs/widgets/blog_widget.dart';
import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // title: Text('Fav'),
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
          child: Column(
            children: [
              Row(children: [
                Text(
                  'Favorites',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: color1,
                  ),
                )
              ]),
              SizedBox(height: 20),
              CustomBlogWidget(
                title:
                    'Top 10 Techniques to get rid of clustters in design system',
                imagePath: 'assets/design.jpg',
                comments: 68,
                postedWhen: 20,
                categoryTag: CategoryTag.design,
              ),
              SizedBox(height: 20),
              CustomBlogWidget(
                title: 'Make an eye catchy visual in photoshop with brushes',
                imagePath: 'assets/mashup.jpg',
                comments: 15,
                postedWhen: 5,
                categoryTag: CategoryTag.art,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
