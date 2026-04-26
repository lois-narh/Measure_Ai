import 'package:flutter/material.dart';
import 'screens/measurement_screen.dart';
import 'screens/login.dart';
import 'screens/signup.dart';
import 'screens/client_profile.dart';
import 'screens/dashboard.dart';
import 'screens/client_measurement_screen.dart';

void main() {
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
