import 'package:get/get.dart';
import 'package:hayyat_mart_app/ui/views/auth/login_screen.dart';
import 'package:hayyat_mart_app/ui/views/auth/signup_screen.dart';
import 'package:hayyat_mart_app/ui/views/home/bottom_nav_controller.dart';
import 'package:hayyat_mart_app/ui/views/splash_screen.dart';

const splash = '/splash-screen';
const onboarding = '/onboarding-screen';
const signup = '/signup-screen';
const signin = '/signin-screen';
const userForm = '/userform-screen';
const privacyPolicy = '/privacy-policy-screen';
const home = '/home-screen';

const faq = '/faq-screen';
const support = '/support-screen';
const privacy = '/privacy-screen';
const setting = '/setting-screen';
const howtouse = '/how-to-use-screen';
const rateUs = '/rate-us';
const searchscreen = '/search-screen';
const seeAllScreen = '/see-all-screen';
const navAddLastStep = '/navAddLastStep-screen';
const detailsScreen = '/details-screen';
const profileScreen = '/profile-screen';

List<GetPage> getPages = [
  GetPage(name: splash, page: () => SplashScreen()),
  //GetPage(name: onboarding, page: () => OnboardingScreen()),
  GetPage(name: signup, page: () => SignupScreen()),
  GetPage(name: signin, page: () => LoginScreen()),
  // GetPage(name: userForm, page: () => UserFormScreen()),
  // GetPage(name: privacyPolicy, page: () => PrivacyPolicyScreen()),
  GetPage(name: home, page: () => Home()),
  // GetPage(name: faq, page: () => Faq()),
  // GetPage(name: rateUs, page: () => Faq()),
  // GetPage(name: support, page: () => Support()),
  // GetPage(name: privacy, page: () => Privacy()),
  // GetPage(name: setting, page: () => Settings()),
  // GetPage(name: howtouse, page: () => HowToUse()),
  // GetPage(name: searchscreen, page: () => SearchScreen()),
  // GetPage(
  //   name: seeAllScreen,
  //   page: () {
  //     SeeAllScreen _SeeAllScreen = Get.arguments;
  //     return _SeeAllScreen;
  //   },
  // ),
  // GetPage(
  //   name: detailsScreen,
  //   page: () {
  //     DetailsScreen _detailsScreen = Get.arguments;
  //     return _detailsScreen;
  //   },
  // ),
  // GetPage(name: profileScreen, page: () => UserProfileScreen()),
  // GetPage(
  //     name: navAddLastStep,
  //     page: () {
  //       NavAddLastStep _addLastStep = Get.arguments; //NavAddLastStep =>Class
  //       return _addLastStep;
  //     }),
];
