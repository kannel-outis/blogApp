import 'package:blog_app/ui/customs/widgets/blog_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class BlogStoryPage extends StatelessWidget {
  final CategoryTag categoryTag;
  final String title;
  final String imagePath;
  final int postedWhen;
  final String tag;

  const BlogStoryPage(
      {Key key,
      this.categoryTag,
      this.title,
      this.imagePath,
      this.postedWhen,
      this.tag})
      : super(key: key);
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
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 60, left: 20, right: 20),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: categoryTagHolder(),
                  ),
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
                          style:
                              TextStyle(color: Color(0xff9fa0a9), fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Container(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(height: 30),
              Hero(
                tag: tag,
                transitionOnUserGestures: true,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    child: Image.asset(imagePath),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                child: Center(
                  child: Text(
                      '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla facilisi morbi tempus iaculis. Eu volutpat odio facilisis mauris sit amet massa vitae. Arcu odio ut sem nulla pharetra diam sit amet nisl. Ipsum nunc aliquet bibendum enim facilisis gravida neque convallis. Purus sit amet volutpat consequat mauris nunc congue nisi. Egestas erat imperdiet sed euismod nisi porta. Ultricies tristique nulla aliquet enim tortor at. Mattis rhoncus urna neque viverra justo nec ultrices dui. Sed libero enim sed faucibus. Et leo duis ut diam quam nulla porttitor. Maecenas accumsan lacus vel facilisis volutpat est. At augue eget arcu dictum varius duis at consectetur.

Etiam erat velit scelerisque in. At erat pellentesque adipiscing commodo elit at imperdiet. Vitae congue eu consequat ac. Consectetur lorem donec massa sapien faucibus. Facilisi morbi tempus iaculis urna id volutpat lacus. Nisi est sit amet facilisis magna etiam tempor. Nisl vel pretium lectus quam id leo in vitae turpis. Accumsan tortor posuere ac ut consequat. Ullamcorper morbi tincidunt ornare massa eget egestas purus viverra. Sodales ut etiam sit amet nisl. Habitant morbi tristique senectus et netus et. Turpis in eu mi bibendum neque egestas congue quisque.''',
                      style: TextStyle(fontSize: 18)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
