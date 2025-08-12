import 'package:first_app/core/constatns/auth_decurations.dart';
import 'package:first_app/core/constatns/colors.dart';
import 'package:first_app/core/constatns/strings.dart';
import 'package:first_app/core/constatns/text_style.dart';
import 'package:first_app/ui/custom_widgets/custombutton.dart';
import 'package:first_app/ui/screens/auth/singup.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isselect = false;

  onClick() {
    setState(() {
      isselect = !isselect;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.all(10),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 1),
                blurRadius: 5,
                spreadRadius: -1,
                color: Color(0xff007F5F).withOpacity(0.5),
              ),
            ],
          ),
          child: Center(child: Icon(Icons.arrow_back)),
        ),
      ),

      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "$staticAssets/applogo.png",
                  color: primeryColor,
                  width: 243,
                  height: 62,
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Welcome Back 👋", style: style32B),
              ),
              Text("Username", style: style16),
              TextFormField(
                decoration: authdecuration.copyWith(
                  hintText: "Email",
                  prefixIcon: Image.asset(
                    "$iconsAssets/usernameicon.png",
                    scale: 3,
                  ),
                ),
              ),
              Text("Passwod", style: style16),
              TextFormField(
                obscureText: isselect ? false : true,
                decoration: authdecuration.copyWith(
                  hintText: "Pasword",
                  prefixIcon: Image.asset("$iconsAssets/key.png", scale: 3),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      onClick();
                    },
                    child:
                        isselect
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: style18.copyWith(color: Color(0xff0066D8)),
                  ),
                ),
              ),
              SizedBox(height: 100),
              Center(child: CustomButton(text: "Login")),
              SizedBox(height: 18),
              Row(
                children: [
                  Expanded(
                    child: Image.asset("$iconsAssets/Line 1.png", scale: 1),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Or continue with",
                      style: sty12.copyWith(color: Color(0xFF677687)),
                      selectionColor: Color(0xFF677687),
                    ),
                  ),
          
                  Expanded(
                    child: Image.asset("$iconsAssets/Line 2.png", scale: 1),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  width: 319,
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFCBD1D8)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 70),
                    child: Row(
                      children: [
                        Image.asset("$iconsAssets/googleicon.png", scale: 3),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
          
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Continue with Google",
                              style: style14M.copyWith(color: Color(0xFF677687)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 21),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t hhave an account?",
                    style: style14.copyWith(color: Color(0xFF677687)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SingUp()),
                      );
                    },
                    child: Text(
                      "Register Now",
                      style: style16.copyWith(
                        color: Colors.blue,fontWeight: FontWeight.bold,
                      ), // Highlighted text
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
