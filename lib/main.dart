import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:oua_bootcamp24_flutter26/routes.dart';
import 'package:oua_bootcamp24_flutter26/screens/SplashScreen/view.dart';
import 'package:oua_bootcamp24_flutter26/services/auth_service.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'screens/signUpAndLoginScreens/loginScreen/viewModel.dart';
import 'screens/signUpAndLoginScreens/signUpScreens/viewModel.dart';
import 'widgets/auth_wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginViewModel()),
        ChangeNotifierProvider(create: (_) => SignUpViewModel()),
        ChangeNotifierProvider(create: (_) => AuthService()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        initialRoute: SplashScreen.routeName,
        routes: routes,
      ),
    );
  }
}
