import 'package:ecommerce/core/constant/app_routes.dart';
import 'package:ecommerce/feature/auth/presention/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'feature/auth/presention/screens/create_account_screen.dart';
import 'feature/category/presentation/screens/category_screen.dart';
import 'feature/layout/presentation/screens/layout_screen.dart';
import 'feature/shop/presentation/screens/shop_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        routes: {
          AppRoutes.loginScreen: (context) => const LoginScreen(),
          AppRoutes.createAccountScreen: (context) => const CreateAccountScreen(),
          AppRoutes.layoutScreen: (context) => const LayoutScreen(),
          AppRoutes.categoryScreen: (context) => const CategoriesScreen(),
          AppRoutes.shopScreen: (context) => const ShopScreen(),
        },
        home: LoginScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
