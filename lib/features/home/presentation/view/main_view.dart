import 'package:donation_management_system_mobile/features/home/presentation/view/widgets/custom_bottom_navbar.dart';
import 'package:donation_management_system_mobile/features/donations/presentation/view/donations_view.dart';
import 'package:donation_management_system_mobile/features/followed/presentation/view/followed_view.dart';
import 'package:donation_management_system_mobile/features/profile/presentation/view/profile_view.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const Center(child: Text('Home Screen')),
    const DonationsView(),
    const FollowedView(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CustomBottomNavbar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
