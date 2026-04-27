import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'screens/measurement_screen.dart';
import 'screens/login.dart';
import 'screens/signup.dart';
import 'screens/client_profile.dart';
import 'screens/dashboard.dart';
import 'screens/client_measurement_screen.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Measure Ai',
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/clientProfile': (context) => const ClientProfilePage(),
        '/dashboard': (context) => const DashboardPage(),
        '/measurements': (context) => const MeasurementPage(),
        '/clientMeasurements': (context) => const ClientMeasurementPage(),
      },
    );
  }
}