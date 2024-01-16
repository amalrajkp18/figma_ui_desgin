import 'package:ui_retry/view/pages/auth/screen_signin.dart';
import 'package:ui_retry/view/pages/auth/screen_signup.dart';
import 'package:ui_retry/view/pages/dashboard/bottom_navigation/bottom_navigation_bar_widget.dart';
import 'package:ui_retry/view/pages/libary/screen_lesson_plan.dart';
import 'package:ui_retry/view/pages/onboarding/screen_onboarding.dart';

final pageRoutes = {
  ScreenOnboarding.routeName: (context) => const ScreenOnboarding(),
  ScreenSignIn.routeName: (context) => const ScreenSignIn(),
  ScreenSignUp.routeName: (context) => const ScreenSignUp(),
  BottomNavigationBarWidget.routeName: (context) =>
      const BottomNavigationBarWidget(),
  ScreenLessonPlan.routeName: (context) => const ScreenLessonPlan()
};
