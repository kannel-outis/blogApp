import 'package:blog_app/ui/customs/widgets/blog_widget.dart';
import 'package:blog_app/utils/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    // color: Colors.black,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: SvgPicture.asset('assets/profile_pic.svg'),
                )
              ],
            ),
            SizedBox(height: 40),
            Container(
              child: Column(
                children: [
                  Container(
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: color2,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: FittedBox(
                      alignment: Alignment.topCenter,
                      fit: BoxFit.fitWidth,
                      child: SvgPicture.asset('assets/dev_productivity.svg'),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Text(
                      'How to run a more Effective meeting',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
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
                              color: color3,
                            ),
                            SizedBox(width: 9),
                            Text(
                              '50m ago',
                              style: TextStyle(color: color3, fontSize: 15),
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
                              color: color3,
                            ),
                            SizedBox(width: 9),
                            Text(
                              '68 comments',
                              style: TextStyle(color: color3, fontSize: 15),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    'Show all',
                    style: TextStyle(
                      color: color1,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            //
            SizedBox(height: 20),
            //
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
    );
  }
}
