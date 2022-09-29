import 'dart:io';
import 'dart:typed_data';

import 'package:cannabitz_networking/const/app_colors.dart';
import 'package:cannabitz_networking/const/app_strings.dart';
import 'package:cannabitz_networking/ui/responsive/size_config.dart';
import 'package:cannabitz_networking/ui/route/route.dart';
import 'package:cannabitz_networking/ui/styles/styles.dart';
import 'package:cannabitz_networking/ui/widgets/app_buttons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../widgets/text_fields.dart';

class ProfileStepOneView extends StatefulWidget {
  @override
  State<ProfileStepOneView> createState() => _ProfileStepOneViewState();
}

class _ProfileStepOneViewState extends State<ProfileStepOneView> {
  String profileType = 'Select your answer';
  XFile? _image;
  bool imageAvailable = false;
  late Uint8List imageFile;
  pickGalleryImage() async {
    if (kIsWeb) {
    } else {
      final ImagePicker _picker = ImagePicker();
      _image = await _picker.pickImage(source: ImageSource.gallery);
    }

    setState(() {});
  }

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
            children: [
              Text(
                AppString.letsTalk,
                style: AppStyles.headingOne,
              ),
              AppStyles.verticalSizedBoxTwenty,
              Text(
                "Tell us about your goals with\nthe cannanbis Market",
                textAlign: TextAlign.center,
                style: AppStyles.headingTwo,
              ),
              AppStyles.verticalSizedBoxTwenty,
              //profile image
              Container(
                width: SizeConfig.screenWidth! < 600 ? 120.w : 120,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  clipBehavior: Clip.none,
                  children: [
                    Card(
                      shape: const CircleBorder(),
                      elevation: 5,
                      child: Container(
                        height: 120.h,
                        width: 120.w,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: _image == null
                            ? Icon(
                                Icons.person_outline,
                                color: AppColors.keppelColor,
                                size: 50,
                              )
                            : kIsWeb
                                ? Image.asset(
                                    _image!.path,
                                    fit: BoxFit.contain,
                                  )
                                : Image.file(
                                    File(_image!.path),
                                    fit: BoxFit.contain,
                                  ),
                      ),
                    ),
                    Positioned(
                      bottom: SizeConfig.screenWidth! < 600 ? -10 : 0,
                      child: InkWell(
                        onTap: () => pickGalleryImage(),
                        child: CircleAvatar(
                          backgroundColor: AppColors.keppelColor,
                          radius: 20,
                          child: Icon(
                            Icons.camera_alt_outlined,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              AppStyles.verticalSizedBoxTwenty,
              Text(
                "Are you building a Person or Company profile?",
                textAlign: TextAlign.center,
                style: AppStyles.headingTwo,
              ),
              AppStyles.verticalSizedBoxTwenty,
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.keppelColor,
                  ),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      iconSize: 0,
                      hint: Text(
                        profileType,
                        style: TextStyle(
                            fontSize:
                                SizeConfig.screenWidth! < 600 ? 12.sp : 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      items: <String>['Person', 'Company'].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                              fontSize:
                                  SizeConfig.screenWidth! < 600 ? 12.sp : 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (val) {
                        setState(() {
                          profileType = val!;
                        });
                      },
                    ),
                  ),
                ),
              ),
              AppStyles.verticalSizedBoxTwenty,
              fullWidthButton(
                "Next",
                () => profileType == "Person"
                    ? Get.toNamed(profileStepTwo)
                    : Get.toNamed(profileStepThree),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileStepTwoView extends StatelessWidget {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();
  final TextEditingController _companyWebsiteController =
      TextEditingController();
  final TextEditingController _whatYouAreLookingForController =
      TextEditingController();

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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  AppString.letsTalk,
                  style: AppStyles.headingOne,
                ),
              ),
              AppStyles.verticalSizedBoxFourty,
              Center(
                child: Text(
                  AppString.tellUsAbout,
                  textAlign: TextAlign.center,
                  style: AppStyles.headingTwo,
                ),
              ),
              AppStyles.verticalSizedBoxFourty,
              Text(
                AppString.firstName,
                style: AppStyles.headingThree,
              ),
              AppStyles.verticalSizedBoxThree,
              customFormField(
                TextInputType.text,
                _firstNameController,
                context,
                "Type Here",
                (val) {},
              ),
              Text(
                AppString.lastName,
                style: AppStyles.headingThree,
              ),
              AppStyles.verticalSizedBoxThree,
              customFormField(
                TextInputType.text,
                _lastNameController,
                context,
                "Type Here",
                (val) {},
              ),
              Text(
                AppString.role,
                style: AppStyles.headingThree,
              ),
              AppStyles.verticalSizedBoxThree,
              customFormField(
                TextInputType.text,
                _roleController,
                context,
                "Type Here",
                (val) {},
              ),
              Text(
                AppString.companyWebsite,
                style: AppStyles.headingThree,
              ),
              AppStyles.verticalSizedBoxThree,
              customFormField(
                TextInputType.text,
                _companyWebsiteController,
                context,
                "Type Here",
                (val) {},
              ),
              Text(
                AppString.lookingFor,
                style: AppStyles.headingThree,
              ),
              AppStyles.verticalSizedBoxThree,
              customFormField(
                TextInputType.text,
                _whatYouAreLookingForController,
                context,
                "Type Here",
                (val) {},
              ),
              AppStyles.verticalSizedBoxFourty,
              fullWidthButton(
                "Next",
                ()=>Get.toNamed(mainHome),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileStepThreeView extends StatelessWidget {
  final TextEditingController _companyNameController = TextEditingController();
  final TextEditingController _websiteController = TextEditingController();
  final TextEditingController _whatKindOfServiceYouOfferController =
      TextEditingController();
  final TextEditingController _whatYouAreLookingForController =
      TextEditingController();
  final TextEditingController _location = TextEditingController();

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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  AppString.letsTalk,
                  style: AppStyles.headingOne,
                ),
              ),
              AppStyles.verticalSizedBoxFourty,
              Center(
                child: Text(
                  AppString.tellUsAbout,
                  textAlign: TextAlign.center,
                  style: AppStyles.headingTwo,
                ),
              ),
              AppStyles.verticalSizedBoxFourty,
              Text(
                AppString.companyName,
                style: AppStyles.headingThree,
              ),
              AppStyles.verticalSizedBoxThree,
              customFormField(
                TextInputType.text,
                _companyNameController,
                context,
                "Type Here",
                (val) {},
              ),
              Text(
                AppString.website,
                style: AppStyles.headingThree,
              ),
              AppStyles.verticalSizedBoxThree,
              customFormField(
                TextInputType.text,
                _websiteController,
                context,
                "Type Here",
                (val) {},
              ),
              Text(
                AppString.serviceOffer,
                style: AppStyles.headingThree,
              ),
              AppStyles.verticalSizedBoxThree,
              customFormField(
                TextInputType.text,
                _whatKindOfServiceYouOfferController,
                context,
                "Type Here",
                (val) {},
              ),
              Text(
                AppString.lookingFor,
                style: AppStyles.headingThree,
              ),
              AppStyles.verticalSizedBoxThree,
              customFormField(
                TextInputType.text,
                _whatYouAreLookingForController,
                context,
                "Type Here",
                (val) {},
              ),
              Text(
                AppString.location,
                style: AppStyles.headingThree,
              ),
              AppStyles.verticalSizedBoxThree,
              customFormField(
                TextInputType.text,
                _location,
                context,
                "Type Here",
                (val) {},
              ),
              AppStyles.verticalSizedBoxFourty,
              fullWidthButton(
                "Next",
                ()=>Get.toNamed(mainHome),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
