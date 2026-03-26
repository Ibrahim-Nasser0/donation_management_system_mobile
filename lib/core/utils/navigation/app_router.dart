import 'package:donation_management_system_mobile/features/auth/presentation/view/login_view.dart';
import 'package:donation_management_system_mobile/features/auth/presentation/view/signup_view.dart';
import 'package:donation_management_system_mobile/core/utils/navigation/view/navigation_view.dart';
import 'package:donation_management_system_mobile/features/profile/presentation/view/edit_profile_view.dart';
import 'package:donation_management_system_mobile/features/profile/presentation/view/my_impact_view.dart';
import 'package:donation_management_system_mobile/features/profile/presentation/view/payment_methods_view.dart';
import 'package:donation_management_system_mobile/features/profile/presentation/view/add_payment_method_view.dart';
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
  static const String paymentMethodsView = '/paymentMethodsView';
  static const String addPaymentMethodView = '/addPaymentMethodView';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: splashView,
        pageBuilder: (context, state) => _buildCustomTransition(
          state,
          const SplashView(),
        ),
      ),
      GoRoute(
        path: loginView,
        pageBuilder: (context, state) => _buildCustomTransition(
          state,
          const LoginView(),
        ),
      ),
      GoRoute(
        path: signupView,
        pageBuilder: (context, state) => _buildCustomTransition(
          state,
          const SignupView(),
        ),
      ),
      GoRoute(
        path: homeView,
        pageBuilder: (context, state) => _buildCustomTransition(
          state,
          const NavigationView(),
        ),
      ),
      GoRoute(
        path: editProfileView,
        pageBuilder: (context, state) => _buildCustomTransition(
          state,
          const EditProfileView(),
        ),
      ),
      GoRoute(
        path: myImpactView,
        pageBuilder: (context, state) => _buildCustomTransition(
          state,
          const MyImpactView(),
        ),
      ),
      GoRoute(
        path: caseDetailsView,
        pageBuilder: (context, state) => _buildCustomTransition(
          state,
          const CaseDetailsView(),
        ),
      ),
      GoRoute(
        path: paymentView,
        pageBuilder: (context, state) => _buildCustomTransition(
          state,
          const PaymentView(),
        ),
      ),
      GoRoute(
        path: paymentMethodsView,
        pageBuilder: (context, state) => _buildCustomTransition(
          state,
          const PaymentMethodsView(),
        ),
      ),
      GoRoute(
        path: addPaymentMethodView,
        pageBuilder: (context, state) => _buildCustomTransition(
          state,
          const AddPaymentMethodView(),
        ),
      ),
    ],
  );

  static CustomTransitionPage _buildCustomTransition(
      GoRouterState state, Widget child) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
          child: child,
        );
      },
    );
  }
}
