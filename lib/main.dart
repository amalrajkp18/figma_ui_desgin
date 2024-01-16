import 'package:flutter/material.dart';
import 'package:ui_retry/core/routes/page_routes.dart';
import 'package:ui_retry/core/theme/theme.dart';
import 'package:ui_retry/view/pages/onboarding/screen_onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      routes: pageRoutes,
      initialRoute: ScreenOnboarding.routeName,
    );
  }
}
