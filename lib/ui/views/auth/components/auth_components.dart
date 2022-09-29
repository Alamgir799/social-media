import 'package:cannabitz_networking/const/app_colors.dart';
import 'package:cannabitz_networking/const/app_strings.dart';
import 'package:cannabitz_networking/ui/responsive/size_config.dart';
import 'package:cannabitz_networking/ui/route/route.dart';
import 'package:cannabitz_networking/ui/styles/styles.dart';
import 'package:cannabitz_networking/ui/widgets/app_buttons.dart';
import 'package:cannabitz_networking/ui/widgets/text_fields.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class SignInView extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  RxBool obscureText = true.obs;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.screenWidth! < 600 ? 40.w : 0,
          vertical: SizeConfig.screenWidth! < 600 ? 20.h : 0,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppString.signIn,
                style: AppStyles.headingOne,
              ),
              AppStyles.verticalSizedBoxFourty,
              Text(
                AppString.helloAgain,
                style: TextStyle(
                  fontSize: SizeConfig.screenWidth! < 600 ? 27.sp : 27,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                AppString.signInYourAccount,
                style: AppStyles.headingTwo,
              ),
              AppStyles.verticalSizedBoxTwenty,
              customFormField(
                TextInputType.emailAddress,
                _emailController,
                context,
                "Email",
                (val) {},
              ),
              Obx(
                () => customFormField(
                  TextInputType.text,
                  _passwordController,
                  context,
                  "Password",
                  (val) {},
                  obscureText: obscureText.value,
                  suffixIcon: IconButton(
                    onPressed: () {
                      obscureText.value = !obscureText.value;
                    },
                    icon: Icon(
                      obscureText.value == false
                          ? Icons.remove_red_eye_outlined
                          : Icons.visibility_off_outlined,
                      size: SizeConfig.screenWidth! < 600 ? 12.w : 12,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () => Get.toNamed(resetPassword),
                  child: Text(
                    AppString.forgotYourPassword,
                    style: TextStyle(
                      fontSize: SizeConfig.screenWidth! < 600 ? 12.sp : 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              AppStyles.verticalSizedBoxFourty,
              fullWidthButton(
                "Sign In",
                ()=>Get.toNamed(mainHome),
              ),
              AppStyles.verticalSizedBoxTwenty,
              Text(
                AppString.orWith,
                style: TextStyle(
                  fontSize: SizeConfig.screenWidth! < 600 ? 12.sp : 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              AppStyles.verticalSizedBoxTwenty,
              authButtonMobile(
                "assets/icons/search.png",
                "Sign in with Google",
                () {},
              ),
              AppStyles.verticalSizedBoxTen,
              authButtonMobile(
                "assets/icons/facebook.png",
                "Sign in with FaceBook",
                () {},
              ),
              AppStyles.verticalSizedBoxTwenty,
              RichText(
                  text: TextSpan(
                      text: AppString.doNotHaveAccount,
                      style: TextStyle(
                          fontSize: SizeConfig.screenWidth! < 600 ? 12.sp : 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                      children: [
                    TextSpan(
                      text: AppString.signUp,
                      style: TextStyle(
                          fontSize: SizeConfig.screenWidth! < 600 ? 12.sp : 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.keppelColor),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.toNamed(signUp),
                    ),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpView extends StatelessWidget {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  RxBool obscureText = true.obs;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.screenWidth! < 600 ? 40.w : 0,
          vertical: SizeConfig.screenWidth! < 600 ? 20.h : 0,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppString.signUp,
                style: AppStyles.headingOne,
              ),
              AppStyles.verticalSizedBoxFourty,
              customFormField(
                TextInputType.text,
                _userNameController,
                context,
                "Username",
                (val) {},
              ),
              customFormField(
                TextInputType.emailAddress,
                _emailController,
                context,
                "Email",
                (val) {},
              ),
              Obx(
                () => customFormField(
                  TextInputType.text,
                  _passwordController,
                  context,
                  "Password",
                  (val) {},
                  obscureText: obscureText.value,
                  suffixIcon: IconButton(
                    onPressed: () {
                      obscureText.value = !obscureText.value;
                    },
                    icon: Icon(
                      obscureText.value == false
                          ? Icons.remove_red_eye_outlined
                          : Icons.visibility_off_outlined,
                      size: SizeConfig.screenWidth! < 600 ? 12.w : 12,
                    ),
                  ),
                ),
              ),
              AppStyles.verticalSizedBoxFourty,
              fullWidthButton(
                "Sign Up",
                () => Get.toNamed(chooseLocation),
              ),
              AppStyles.verticalSizedBoxTwenty,
              Text(
                AppString.orWith,
                style: TextStyle(
                  fontSize: SizeConfig.screenWidth! < 600 ? 12.sp : 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              AppStyles.verticalSizedBoxTwenty,
              authButtonMobile(
                "assets/icons/search.png",
                "Sign in with Google",
                () {},
              ),
              AppStyles.verticalSizedBoxTen,
              authButtonMobile(
                "assets/icons/facebook.png",
                "Sign in with FaceBook",
                () {},
              ),
              AppStyles.verticalSizedBoxTwenty,
              RichText(
                  text: TextSpan(
                      text: AppString.haveAnAccount,
                      style: TextStyle(
                          fontSize: SizeConfig.screenWidth! < 600 ? 12.sp : 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                      children: [
                    TextSpan(
                      text: AppString.signIn,
                      style: TextStyle(
                          fontSize: SizeConfig.screenWidth! < 600 ? 12.sp : 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.keppelColor),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.toNamed(signIn),
                    ),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}

class ChooseLocationView extends StatelessWidget {
  // final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  RxBool obscureText = true.obs;
  String countryName = "United State";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.screenWidth! < 600 ? 40.w : 0,
          vertical: SizeConfig.screenWidth! < 600 ? 20.h : 0,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppString.signUp,
                style: AppStyles.headingOne,
              ),
              AppStyles.verticalSizedBoxTwenty,
              Text(
                AppString.phoneNumberLocation,
                textAlign: TextAlign.center,
                style: AppStyles.headingTwo,
              ),
              AppStyles.verticalSizedBoxFourty,
              Row(
                children: [
                  CountryCodePicker(
                    onChanged: (val) {
                      print(val);
                    },
                    textStyle: TextStyle(
                      fontSize: SizeConfig.screenWidth! < 600 ? 14.sp : 12,
                    ),
                    initialSelection: 'Us',
                    favorite: ['+39', 'US'],
                    showCountryOnly: false,
                    showOnlyCountryWhenClosed: false,
                    alignLeft: false,
                  ),
                  Expanded(
                    child: customFormField(
                      TextInputType.number,
                      _phoneController,
                      context,
                      "Type your phone number",
                      (val) {},
                    ),
                  ),
                ],
              ),
              AppStyles.verticalSizedBoxTwenty,
              fullWidthButton(
                "Continue",
                () => Get.toNamed(otp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OtpView extends StatelessWidget {
  final TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.screenWidth! < 600 ? 40.w : 0,
          vertical: SizeConfig.screenWidth! < 600 ? 20.h : 0,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppString.verification,
                style: AppStyles.headingOne,
              ),
              AppStyles.verticalSizedBoxTwenty,
              Text(
                AppString.enterTheVerification,
                textAlign: TextAlign.center,
                style: AppStyles.headingTwo,
              ),
              AppStyles.verticalSizedBoxFourty,
              PinCodeTextField(
                autofocus: true,
                controller: _otpController,
                hideCharacter: true,
                highlight: true,
                highlightColor: Colors.purple,
                defaultBorderColor: AppColors.keppelColor,
                hasTextBorderColor: Colors.transparent,
                highlightPinBoxColor: Colors.transparent,
                maxLength: 6,
                pinBoxWidth: 40,
                pinBoxHeight: 50,
                pinBoxRadius: 10.r,
                hasUnderline: true,
                wrapAlignment: WrapAlignment.spaceAround,
                pinBoxDecoration:
                    ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                pinTextStyle: TextStyle(fontSize: 22.0),
                pinTextAnimatedSwitcherTransition:
                    ProvidedPinBoxTextAnimation.scalingTransition,
//                    pinBoxColor: Colors.green[100],
                pinTextAnimatedSwitcherDuration: Duration(milliseconds: 300),
//                    highlightAnimation: true,
                highlightAnimationBeginColor: Colors.black,
                highlightAnimationEndColor: Colors.white12,
                keyboardType: TextInputType.number,
              ),
              AppStyles.verticalSizedBoxTwenty,
              fullWidthButton("Continue", ()=>Get.toNamed(profileStepOne),),
            ],
          ),
        ),
      ),
    );
  }
}

class ResetPasswordView extends StatelessWidget {
  // final TextEditingController _emailController = TextEditingController();
  final TextEditingController _resetPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.screenWidth! < 600 ? 40.w : 0,
          vertical: SizeConfig.screenWidth! < 600 ? 20.h : 0,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppString.resetPassword,
                style: AppStyles.headingOne,
              ),
              AppStyles.verticalSizedBoxTwenty,
              Text(
                AppString.resetPasswordDetails,
                textAlign: TextAlign.center,
                style: AppStyles.headingTwo,
              ),
              AppStyles.verticalSizedBoxFourty,
              customFormField(
                TextInputType.emailAddress,
                _resetPassController,
                context,
                "email address",
                (val) {},
              ),
              AppStyles.verticalSizedBoxTwenty,
              fullWidthButton("Send", () {}),
            ],
          ),
        ),
      ),
    );
  }
}
