import 'package:blog_app/constants/color.dart';
import 'package:blog_app/ui/customs/text_fields.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController;
  TextEditingController _passwordController;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                color: color1,
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 4,
                left: 20,
                child: Container(
                  width: 200,
                  child: Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Don't have an Account?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Register Here',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: color1),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, right: 30, bottom: 50),
                  height: (MediaQuery.of(context).size.height / 2) - 100,
                  child: Form(
                    child: Column(
                      children: [
                        CustomTextFormfield(
                          controller: _emailController,
                          labelName: "Email",
                          keyBoardInputtype: TextInputType.emailAddress,
                        ),
                        CustomTextFormfield(
                          controller: _passwordController,
                          labelName: "Password",
                          obscure: true,
                        ),
                        SizedBox(height: 15),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: FlatButton(
                            onPressed: () {},
                            height: 50,
                            textColor: Colors.white,
                            color: Color(0xFFFF691C),
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
