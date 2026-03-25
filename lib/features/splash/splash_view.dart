import 'package:donation_management_system_mobile/core/utils/app_router.dart';
import 'package:donation_management_system_mobile/features/splash/widgets/splash_background.dart';
import 'package:donation_management_system_mobile/features/splash/widgets/splash_loading_indicator.dart';
import 'package:donation_management_system_mobile/features/splash/widgets/splash_logo.dart';
import 'package:donation_management_system_mobile/features/splash/widgets/splash_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;
  late Animation<double> _progressAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5, curve: Curves.easeIn),
      ),
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5, curve: Curves.easeOutBack),
      ),
    );

    _progressAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 1.0, curve: Curves.linear),
      ),
    );

    _controller.forward().then((value) {
      if (mounted) {
        GoRouter.of(context).pushReplacement(AppRouter.loginView);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SplashBackground(),
          SafeArea(
            child: Center(
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      FadeTransition(
                        opacity: _fadeAnimation,
                        child: ScaleTransition(
                          scale: _scaleAnimation,
                          child: const SplashLogo(),
                        ),
                      ),
                      Gap(40.h),
                      FadeTransition(
                        opacity: _fadeAnimation,
                        child: const SplashText(),
                      ),
                      const Spacer(),
                      FadeTransition(
                        opacity: _fadeAnimation,
                        child: SplashLoadingIndicator(
                          progress: _progressAnimation.value,
                        ),
                      ),
                      Gap(40.h),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

}
