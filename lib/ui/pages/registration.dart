import 'package:blog_app/ui/customs/text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController _firstNameController;
  TextEditingController _lastNameController;
  TextEditingController _emailController;
  TextEditingController _passwordController;
  @override
  void initState() {
    super.initState();
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  height: 250,
                  width: 250,
                  child: SvgPicture.asset("assets/registration.svg"),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                height: 350,
                // color: Colors.black,
                child: Form(
                  child: Column(
                    children: [
                      CustomTextFormfield(
                        controller: _firstNameController,
                        labelName: "First Name",
                      ),
                      CustomTextFormfield(
                        controller: _lastNameController,
                        labelName: "Last Name",
                      ),
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
                              "Register",
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
      ),
    );
  }
}
