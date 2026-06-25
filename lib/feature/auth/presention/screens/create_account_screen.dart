import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constant/app_assets.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_size.dart';
import '../../../../core/constant/app_text_style.dart';
import '../widgets/primary_text_form_field.dart';
import '../widgets/secondary_button.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSize.horizontalPadding.w,vertical: 90.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 24.h,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppAssets.logo,width: 235.w,height: 70.h,),
                ],
              ),
              SizedBox(height: 20.h,),
              Text("Full Name",style: AppTextStyle.poppins18White500,),
              PrimaryTextFormField(hintText: "enter your full name",),
              SizedBox(height: 5.h,),
              Text("Mobile Number",style: AppTextStyle.poppins18White500,),
              PrimaryTextFormField(hintText: "enter your mobile no.",keyboardType: TextInputType.phone,),
              SizedBox(height: 5.h,),
              Text("E-mail address",style: AppTextStyle.poppins18White500,),
              PrimaryTextFormField(hintText: "enter your email address",),
              SizedBox(height: 5.h,),
              Text("Password",style: AppTextStyle.poppins18White500,),
              PrimaryTextFormField(hintText: "enter your password",isPassword: true,),
              SizedBox(height: 30.h,),
              SecondaryButton(text: "Sign Up", onPressed: (){}),
            ],
          ),
        ),
      ),
    );
  }
}
