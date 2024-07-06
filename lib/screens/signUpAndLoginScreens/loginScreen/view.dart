import 'package:flutter/material.dart';
import 'package:oua_bootcamp24_flutter26/screens/signUpAndLoginScreens/signUpScreens/view.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = 'LoginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    Positioned(
                      left: MediaQuery.of(context).size.width / 2 - 90,
                      top: 100,
                      child: Container(
                        width: 182,
                        height: 171,
                        child: Image.asset("assets/images/logo.png"),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width / 2 - 45,
                      top: 300,
                      child: Text(
                        'RIGHT',
                        style: TextStyle(
                          color: Color(0xFF6B5297),
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width / 2 - 139.5,
                      top: 365,
                      child: Container(
                        width: 279,
                        child: Column(
                          children: [
                            _buildTextField('email'),
                            SizedBox(height: 20),
                            _buildTextField(
                              'Password',
                              isPassword: true,
                              isPasswordVisible: _isPasswordVisible,
                              onTogglePasswordVisibility: () {
                                setState(() {
                                  _isPasswordVisible = !_isPasswordVisible;
                                });
                              },
                            ),
                            SizedBox(height: 10),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF7AD04D),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(44),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 95, vertical: 8),
                                elevation: 4,
                              ),
                              onPressed: () {},
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Divider(
                              height: 1,
                              color: Colors.grey,
                            ),
                            SizedBox(height: 20),
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
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't have an account?",
                                  style: TextStyle(
                                    color: Color(0xFF8C8E99),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(context, SignUpScreen.routeName);
                                  },
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(color: Color(0xFF7AD04D)),
                                  ),
                                ),
                              ],
                            ),
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
