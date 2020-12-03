import 'package:blog_app/ui/pages/blog_story_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

enum CategoryTag {
  design,
  art,
  business,
}

class CustomBlogWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final int comments;
  final int postedWhen;
  final CategoryTag categoryTag;

  const CustomBlogWidget({
    Key key,
    @required this.imagePath,
    @required this.title,
    @required this.comments,
    @required this.postedWhen,
    this.categoryTag,
  }) : super(key: key);

  Widget categoryTagHolder() {
    switch (categoryTag) {
      case CategoryTag.design:
        return Container(
          decoration: BoxDecoration(
            color: Color(0xff503e9d),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.all(4),
          child: Text(
            'DESIGN',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
        break;
      case CategoryTag.art:
        return Container(
          decoration: BoxDecoration(
            color: Color(0xfffbd460),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.all(4),
          child: Text(
            'ART',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
        break;
      case CategoryTag.business:
        return Container(
          decoration: BoxDecoration(
            color: Color(0xffff6a1e),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.all(4),
          child: Text(
            'BUSINESS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          CupertinoPageRoute(
            builder: (context) => BlogStoryPage(
              categoryTag: categoryTag,
              imagePath: imagePath,
              title: title,
              postedWhen: postedWhen,
              tag: title,
            ),
          ),
        );
      },
      child: Container(
        // color: Colors.pink,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Hero(
                tag: title,
                transitionOnUserGestures: true,
                child: Container(
                  height: 80,
                  width: 80,
                  // decoration: BoxDecoration(),
                  // color: Colors.black,
                  child: Image.asset(imagePath, fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [categoryTagHolder()],
                  ),
                  SizedBox(height: 15),
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Feather.clock,
                              size: 16,
                              color: Color(0xff9fa0a9),
                            ),
                            SizedBox(width: 9),
                            Text(
                              '$postedWhen m ago',
                              style: TextStyle(
                                  color: Color(0xff9fa0a9), fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Feather.message_circle,
                              size: 16,
                              color: Color(0xff9fa0a9),
                            ),
                            SizedBox(width: 9),
                            Text(
                              '$comments comments',
                              style: TextStyle(
                                  color: Color(0xff9fa0a9), fontSize: 15),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
