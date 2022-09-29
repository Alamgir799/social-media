import 'package:cannabitz_networking/ui/views/auth/choose_location.dart';
import 'package:cannabitz_networking/ui/views/auth/otp.dart';
import 'package:cannabitz_networking/ui/views/auth/reset_password.dart';
import 'package:cannabitz_networking/ui/views/auth/sign_in.dart';
import 'package:cannabitz_networking/ui/views/auth/sign_up.dart';
import 'package:cannabitz_networking/ui/views/home/main_home.dart';
import 'package:cannabitz_networking/ui/views/intro/get_started.dart';
import 'package:cannabitz_networking/ui/views/intro/onboarding.dart';
import 'package:cannabitz_networking/ui/views/profile/profile_step_one.dart';
import 'package:cannabitz_networking/ui/views/profile/profile_step_three.dart';
import 'package:cannabitz_networking/ui/views/profile/profile_step_two.dart';
import 'package:cannabitz_networking/ui/views/splash/splash.dart';
import 'package:get/get.dart';

const String splash = '/splash-screen';
const String getStarted = '/get-started-screen';
const String onboarding = '/onboarding-screen';
const String signUp = '/registration-screen';
const String signIn = '/login-screen';
const String chooseLocation = '/choose-location-screen';
const String otp = '/otp-screen';
const String resetPassword = '/Reset-Password-screen';
const String profileStepOne = '/Profile-Step-One-screen';
const String profileStepTwo = '/Profile-Step-Two-screen';
const String profileStepThree = '/Profile-Step-Three-screen';
const String mainHome = '/main-Home-screen';

List<GetPage> getPages = [
  GetPage(
    name: splash,
    page: () => SplashScreen(),
  ),
  GetPage(
    name: getStarted,
    page: () => GetStarted(),
  ),
  GetPage(
    name: onboarding,
    page: () => OnboardingScreen(),
  ),
  GetPage(
    name: signUp,
    page: () => SignUp(),
  ),
  GetPage(
    name: signIn,
    page: () => SignIn(),
  ),
  GetPage(
    name: chooseLocation,
    page: () => ChooseLocation(),
  ),
  GetPage(
    name: otp,
    page: () => Otp(),
  ),
  GetPage(
    name: resetPassword,
    page: () => ResetPassword(),
  ),
  GetPage(
    name: profileStepOne,
    page: () => ProfileStepOne(),
  ),
  GetPage(
    name: profileStepTwo,
    page: () => ProfileStepTwo(),
  ),
  GetPage(
    name: profileStepThree,
    page: () => ProfileStepThree(),
  ),
  GetPage(
    name: mainHome,
    page: () => MainHome(),
  ),
];
