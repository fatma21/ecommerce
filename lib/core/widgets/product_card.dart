import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/app_assets.dart';
import '../constant/app_colors.dart';
import '../constant/app_text_style.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(color: AppColors.primaryColor,width: 1.sp)
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Image.asset(AppAssets.productImage),
              Positioned(
                top: 8.h,
                right: 8.w,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.favorite_border_outlined,color: AppColors.primaryColor),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8.0.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Washing Machine",style: AppTextStyle.poppins14PrimaryColor400,),
                Row(
                  children: [
                    Text("Review (4.8)",style: AppTextStyle.poppins12PrimaryColor400,),
                    Icon(Icons.star,color: AppColors.startColor,size: 16.r,),
                  ],
                ),
                Row(
                  spacing: 35,
                  children: [
                    Text("EGP 9000",style: AppTextStyle.poppins12PrimaryColor400,),
                    IconButton(onPressed: (){},
                        padding: EdgeInsets.zero,
                        alignment: Alignment.centerRight,
                        style: IconButton.styleFrom(
                            minimumSize: Size(30.w,30.h),
                            backgroundColor: AppColors.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.r),
                            )
                        ),
                        icon: Icon(Icons.add,color: Colors.white,))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
