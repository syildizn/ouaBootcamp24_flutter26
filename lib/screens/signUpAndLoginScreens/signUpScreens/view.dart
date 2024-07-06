import 'package:flutter/material.dart';
import 'package:oua_bootcamp24_flutter26/screens/signUpAndLoginScreens/loginScreen/view.dart';

class SignUpScreen extends StatefulWidget {
  static String routeName = 'SignUpScreen';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isPasswordVisible = false;
  bool _isPasswordVisible2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Positioned(
                    left: MediaQuery.of(context).size.width / 2 - 46,
                    top: 29,
                    child: Container(
                      width: 92,
                      height: 86,
                      child: Image.asset("assets/images/logo.png"),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 4,
                    top: 138,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create an account',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Connect with your friends today!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF343434),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 2 - 139.5,
                    top: 212,
                    child: Container(
                      width: 279,
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          _buildTextField('Enter your full name'),
                          SizedBox(height: 20),
                          _buildTextField('Enter your nickname'),
                          SizedBox(height: 20),
                          _buildTextField('Enter your e-mail'),
                          SizedBox(height: 20),
                          _buildTextField('Enter your phone number'),
                          SizedBox(height: 20),
                          _buildTextField('Enter your password', isPassword: true, isPasswordVisible: _isPasswordVisible, onTogglePasswordVisibility: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          }),
                          SizedBox(height: 20),
                          _buildTextField('Enter your password', isPassword: true, isPasswordVisible: _isPasswordVisible2, onTogglePasswordVisibility: () {
                            setState(() {
                              _isPasswordVisible2 = !_isPasswordVisible2;
                            });
                          }),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF7AD04D),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(44),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 85, vertical: 3),
                              elevation: 4,
                            ),
                            onPressed: () {},
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Divider(
                            height: 1,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 10),
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              side: BorderSide(color: Colors.black.withOpacity(0.25)),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(44),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                              elevation: 4,
                            ),
                            onPressed: () {},
                            icon: Image.asset('assets/images/google.png', width: 24, height: 24),
                            label: Text(
                              'or sign in using with Google',
                              style: TextStyle(
                                color: Color(0xFF8C8E99),
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 10),
                              Text(
                                "Already have an account?",
                                style: TextStyle(
                                  color: Color(0xFF8C8E99),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(context, LoginScreen.routeName);
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(color: Color(0xFF7AD04D)),
                                ),
                              ),
                            ],
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
    );
  }

  Widget _buildTextField(String hintText, {bool isPassword = false, bool isPasswordVisible = false, VoidCallback? onTogglePasswordVisibility}) {
    return TextField(
      obscureText: isPassword && !isPasswordVisible,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Color(0xFF8D8E99),
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.4),
          ),
        ),
        suffixIcon: isPassword
            ? IconButton(
          icon: Icon(
            isPasswordVisible ? Icons.visibility : Icons.visibility_off,
            color: Color(0xFF8D8E99),
          ),
          onPressed: onTogglePasswordVisibility,
        )
            : null,
      ),
    );
  }
}
