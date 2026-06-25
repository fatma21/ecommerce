import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/app_assets.dart';
import '../../../../core/constant/app_text_style.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: double.infinity,
      child: Column(
        spacing: 8.h,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(AppAssets.categoryImage),
          Text("Women’s fashion",style: AppTextStyle.poppins12PrimaryColor400,textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
