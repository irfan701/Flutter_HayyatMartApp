import 'package:hayyat_mart_app/consts/consts.dart';
import 'package:hayyat_mart_app/ui/views/auth/login_screen.dart';
import 'package:hayyat_mart_app/ui/widgets/applogo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(Duration(seconds: 1), () {
      Get.to(() => LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                icSplashBg,
                width: 300.w,
                height: 200.h,
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Container(
              child: applogoWidget(),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              appname,
              style: TextStyle(
                  fontFamily: bold, fontSize: 22.sp, color: whiteColor),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              appversion,
              style: TextStyle(color: whiteColor),
            ),
            Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                appversion,
                style: TextStyle(
                    fontFamily: semibold, fontSize: 20.sp, color: whiteColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
