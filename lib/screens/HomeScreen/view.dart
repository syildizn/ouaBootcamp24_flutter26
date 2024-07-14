import 'package:flutter/material.dart';
import 'package:oua_bootcamp24_flutter26/screens/signUpAndLoginScreens/loginScreen/view.dart';
import 'package:oua_bootcamp24_flutter26/services/auth_service.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hoş geldiniz'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await Provider.of<AuthService>(context, listen: false).signOut();
                Navigator.pushReplacementNamed(context, LoginScreen.routeName);
              },
              child: Text('Çıkış Yap'),
            ),
          ],
        ),
      ),
    );
  }
}
