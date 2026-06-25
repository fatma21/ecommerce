import 'package:ecommerce/core/constant/app_assets.dart';
import 'package:ecommerce/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constant/app_routes.dart';
import '../../../../core/constant/app_text_style.dart';
import '../../../../core/widgets/app_bar.dart';
import '../../../shop/presentation/screens/shop_screen.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  int _selectedCategoryIndex = 1;

  final List<String> _mainCategories = [
    "Men’s Fashion",
    "Women’s Fashion",
    "Skincare",
    "Beauty",
    "Headphones",
    "Cameras",
    "Laptops & Electronics",
    "Baby & Toys",
  ];

  final List<Map<String, String>> _subCategories = [
    {"title": "Dresses", "image": AppAssets.categoryBannerImage2},
    {"title": "Jeans", "image": AppAssets.categoryBannerImage2},
    {"title": "skirts", "image": AppAssets.categoryBannerImage2},
    {"title": "pijamas", "image": AppAssets.categoryBannerImage2},
    {"title": "Bags", "image": AppAssets.categoryBannerImage2},
    {"title": "T-shirts", "image": AppAssets.categoryBannerImage2},
    {"title": "Footwear", "image": AppAssets.categoryBannerImage2},
    {"title": "Eyewear", "image": AppAssets.categoryBannerImage2},
    {"title": "Watches", "image": AppAssets.categoryBannerImage2},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: Row(
        spacing: 24.w,
        children: [
          Container(
            width: 140.w,
            color: AppColors.secondaryColor,
            child: ListView.builder(
              itemCount: _mainCategories.length,
              itemBuilder: (context, index) {
                bool isSelected = _selectedCategoryIndex == index;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedCategoryIndex = index;
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    padding: !isSelected ? EdgeInsets.symmetric(vertical: 20.h, horizontal: 5.w):null,
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.white : Colors.transparent,
                    ),
                    child: Row(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          width: 5.w,
                          height: isSelected ? 72.h : 0,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        if (isSelected) SizedBox(width: 8.w),
                        Expanded(
                          child: Text(
                            _mainCategories[index],
                            style: AppTextStyle.poppins14PrimaryColor500
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _mainCategories[_selectedCategoryIndex],
                  style: AppTextStyle.poppins14PrimaryColor500,
                ),
                SizedBox(height: 12.h),
                Container(
                  width: double.infinity,
                  height: 95.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    image: DecorationImage(
                      image: AssetImage(AppAssets.categoryBannerImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                ),
                SizedBox(height: 16.h),
                Expanded(
                  child: GridView.builder(
                    itemCount: _subCategories.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 13.w,
                      mainAxisSpacing: 16.h,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ShopScreen(),
                            ),
                          );                        },
                        child: Column(
                          spacing: 8.h,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.r),
                                child: Container(
                                  color: Colors.grey[100],
                                  width: double.infinity,
                                  child: Image.asset(
                                    _subCategories[index]["image"]!,
                                    width: 70.w,
                                    height: 70.h,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              _subCategories[index]["title"]!,
                              style: AppTextStyle.poppins12PrimaryColor400,
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}