import 'package:blog_app/constants/color.dart';
import 'package:blog_app/ui/customs/text_fields.dart';
import 'package:blog_app/ui/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

class RegistrationScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    var _nameController = useTextEditingController();
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
                        "Welcome",
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
                            "Already Have an Account?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Login Here',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: color1),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 30, right: 30, bottom: 50),
                      height: (MediaQuery.of(context).size.height / 2) - 55,
                      child: Form(
                        child: Column(
                          children: [
                            CustomTextFormfield(
                              controller: _nameController,
                              labelName: "Name",
                              keyBoardInputtype: TextInputType.emailAddress,
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
                                onPressed: () {
                                  context.read(authC).userRegistration(
                                        email: _emailController.text,
                                        name: _nameController.text,
                                        password: _passwordController.text,
                                      );
                                },
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
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:blog_app/ui/customs/text_fields.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class RegistrationScreen extends StatefulWidget {
//   @override
//   _RegistrationScreenState createState() => _RegistrationScreenState();
// }

// class _RegistrationScreenState extends State<RegistrationScreen> {
//   TextEditingController _firstNameController;
//   TextEditingController _lastNameController;
//   TextEditingController _emailController;
//   TextEditingController _passwordController;
//   @override
//   void initState() {
//     super.initState();
//     _firstNameController = TextEditingController();
//     _lastNameController = TextEditingController();
//     _emailController = TextEditingController();
//     _passwordController = TextEditingController();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//           child: Column(
//             children: <Widget>[
//               Center(
//                 child: Container(
//                   height: 200,
//                   width: 200,
//                   child: SvgPicture.asset("assets/registration.svg"),
//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.symmetric(horizontal: 30),
//                 height: 350,
//                 // color: Colors.black,
//                 child: Form(
//                   child: Column(
//                     children: [
//                       CustomTextFormfield(
//                         controller: _firstNameController,
//                         labelName: "First Name",
//                       ),
//                       CustomTextFormfield(
//                         controller: _lastNameController,
//                         labelName: "Last Name",
//                       ),
//                       CustomTextFormfield(
//                         controller: _emailController,
//                         labelName: "Email",
//                         keyBoardInputtype: TextInputType.emailAddress,
//                       ),
//                       CustomTextFormfield(
//                         controller: _passwordController,
//                         labelName: "Password",
//                         obscure: true,
//                       ),
//                       SizedBox(height: 15),
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(5),
//                         child: FlatButton(
//                           onPressed: () {},
//                           height: 50,
//                           textColor: Colors.white,
//                           color: Color(0xFFFF691C),
//                           child: Center(
//                             child: Text(
//                               "Register",
//                               style: TextStyle(fontSize: 20),
//                             ),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
