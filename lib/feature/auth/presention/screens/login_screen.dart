import 'package:ecommerce/core/constant/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_routes.dart';
import '../../../../core/constant/app_size.dart';
import '../../../../core/constant/app_text_style.dart';
import '../widgets/primary_text_form_field.dart';
import '../widgets/secondary_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      resizeToAvoidBottomInset: false,
      body:Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSize.horizontalPadding.w,vertical: 90.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 5.h,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppAssets.logo,width: 235.w,height: 70.h,),
                ],
              ),
              SizedBox(height: 70.h,),
              Text("Welcome Back To Route",style: AppTextStyle.poppins24White600,),
              Text("Please sign in with your mail",style: AppTextStyle.poppins16White300,),
              SizedBox(height: 30.h,),
              Text("User Name",style: AppTextStyle.poppins18White500,),
              SizedBox(height: 15.h,),
              PrimaryTextFormField(hintText: "enter your name",),
              SizedBox(height: 25.h,),
              Text("Password",style: AppTextStyle.poppins18White500,),
              SizedBox(height: 15.h,),
              PrimaryTextFormField(hintText: "enter your password",isPassword: true,),
              SizedBox(height: 5.h,),
              TextButton(
                  onPressed: (){
                  },
                  style: TextButton.styleFrom(
                    minimumSize: Size(double.infinity,50.h),
                    alignment: Alignment.centerRight,
                  ),
                  child: Text("Forgot Password?",style: AppTextStyle.poppins18White400,
                  )
              ),
              SizedBox(height: 45.h,),
              SecondaryButton(text: "Login", onPressed: (){
                Navigator.pushNamed(context, AppRoutes.layoutScreen);
              }),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? ",style: AppTextStyle.poppins18White500,),
                  TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, AppRoutes.createAccountScreen);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text("Create Account",style: AppTextStyle.poppins18White500,),
                  )
                ]
              ),
            ],
          ),
        ),
      )
    );
  }
}
