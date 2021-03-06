import 'package:blog_app/ui/customs/text_fields.dart';
import 'package:blog_app/ui/view_model/auth/auth_view_model.dart';
import 'package:blog_app/ui/view_model/auth/isLoading.dart';
import 'package:blog_app/utils/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/all.dart';

class LoginScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _auth = useProvider(authC);

    var _emailController = useTextEditingController();
    var _passwordController = useTextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
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
                                onPressed: () {
                                  _auth
                                      .userLogin(
                                    email: _emailController.text,
                                    password: _passwordController.text,
                                  )
                                      .then((value) {
                                    if (value == null) {
                                      Fluttertoast.showToast(
                                          msg: _auth.bError.message);
                                    }
                                  });
                                },
                                height: 50,
                                textColor: Colors.white,
                                color: Color(0xFFFF691C),
                                child: Center(
                                  child: Consumer(builder: (context, watch, _) {
                                    bool _isLoading = watch(isLoadingB.state);
                                    return _isLoading
                                        ? Text(
                                            'Loading...',
                                            style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.3),
                                            ),
                                          )
                                        : Text(
                                            "Login",
                                            style: TextStyle(fontSize: 20),
                                          );
                                  }),
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
        ),
      ),
    );
  }
}
