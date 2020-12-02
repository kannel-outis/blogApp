import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/svg.dart';

class BlogHomeScreen extends StatefulWidget {
  @override
  _BlogHomeScreenState createState() => _BlogHomeScreenState();
}

class _BlogHomeScreenState extends State<BlogHomeScreen> {
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
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFccdfec),
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
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
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
                        color: Color(0xff9fa0a9),
                      ),
                      SizedBox(width: 9),
                      Text(
                        '50m ago',
                        style:
                            TextStyle(color: Color(0xff9fa0a9), fontSize: 15),
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
                        '68 comments',
                        style:
                            TextStyle(color: Color(0xff9fa0a9), fontSize: 15),
                      )
                    ],
                  ),
                )
              ],
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
                      color: Color(0xfffd8243),
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            //
            SizedBox(height: 15),
            Container(
              // color: Colors.pink,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Container(
                      height: 80,
                      width: 80,
                      // decoration: BoxDecoration(),
                      // color: Colors.black,
                      child:
                          Image.asset('assets/design.jpg', fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
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
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Top 10 Techniques to get rid of clustters in design system',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Feather.clock,
                                    size: 16,
                                    color: Color(0xff9fa0a9),
                                  ),
                                  SizedBox(width: 9),
                                  Text(
                                    '50m ago',
                                    style: TextStyle(
                                        color: Color(0xff9fa0a9), fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 15),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Feather.message_circle,
                                    size: 16,
                                    color: Color(0xff9fa0a9),
                                  ),
                                  SizedBox(width: 9),
                                  Text(
                                    '68 comments',
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
          ],
        ),
      ),
    );
  }
}
