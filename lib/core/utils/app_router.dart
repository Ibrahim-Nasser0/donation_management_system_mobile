import 'package:donation_management_system_mobile/features/auth/presentation/view/login_view.dart';
import 'package:donation_management_system_mobile/features/auth/presentation/view/signup_view.dart';
import 'package:donation_management_system_mobile/features/home/presentation/view/main_view.dart';
import 'package:donation_management_system_mobile/features/profile/presentation/view/edit_profile_view.dart';
import 'package:donation_management_system_mobile/features/profile/presentation/view/my_impact_view.dart';
import 'package:donation_management_system_mobile/features/splash/splash_view.dart';
import 'package:donation_management_system_mobile/features/case_details/presentation/view/case_details_view.dart';
import 'package:donation_management_system_mobile/features/payment/presentation/view/payment_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String splashView = '/';
  static const String loginView = '/loginView';
  static const String signupView = '/signupView';
  static const String homeView = '/homeView';
  static const String editProfileView = '/editProfileView';
  static const String myImpactView = '/myImpactView';
  static const String bookDetailsView = '/bookDetailsView';
  static const String searchView = '/searchView';
  static const String caseDetailsView = '/caseDetailsView';
  static const String paymentView = '/paymentView';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: splashView,
        builder: (BuildContext context, GoRouterState state) => const SplashView(),
      ),
      GoRoute(
        path: loginView,
        builder: (BuildContext context, GoRouterState state) => const LoginView(),
      ),
      GoRoute(
        path: signupView,
        builder: (BuildContext context, GoRouterState state) => const SignupView(),
      ),
      GoRoute(
        path: homeView,
        builder: (BuildContext context, GoRouterState state) => const MainView(),
      ),
      GoRoute(
        path: editProfileView,
        builder: (BuildContext context, GoRouterState state) => const EditProfileView(),
      ),
      GoRoute(
        path: myImpactView,
        builder: (BuildContext context, GoRouterState state) => const MyImpactView(),
      ),
      GoRoute(
        path: caseDetailsView,
        builder: (BuildContext context, GoRouterState state) => const CaseDetailsView(),
      ),
      GoRoute(
        path: paymentView,
        builder: (BuildContext context, GoRouterState state) => const PaymentView(),
      ),
    ],
  );
}
