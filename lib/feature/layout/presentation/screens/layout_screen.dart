import 'package:ecommerce/feature/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constant/app_size.dart';
import '../../../category/presentation/screens/categories_navegator_screen.dart';
import '../widgets/custom_nav_bar.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _currentIndex = 0;
  final GlobalKey<NavigatorState> _categoriesNavigatorKey = GlobalKey<NavigatorState>();

  late final List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      const HomeScreen(),
      CategoriesTabNavigator(navigatorKey: _categoriesNavigatorKey),
      const Center(child: Text("Favorites Screen", style: TextStyle(color: Colors.white, fontSize: 24))),
      const Center(child: Text("Profile Screen", style: TextStyle(color: Colors.white, fontSize: 24))),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSize.horizontalPadding.w),
        child: IndexedStack(
          index: _currentIndex,
          children: _screens,
        ),
      ),

      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _currentIndex,
        onTabSelected: (index) {
          _categoriesNavigatorKey.currentState?.popUntil((route) => route.isFirst);
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}