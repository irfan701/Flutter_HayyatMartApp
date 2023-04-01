import 'package:hayyat_mart_app/consts/consts.dart';
import 'package:hayyat_mart_app/consts/lists.dart';
import 'package:hayyat_mart_app/ui/route/route.dart';
import 'package:hayyat_mart_app/ui/widgets/applogo_widget.dart';
import 'package:hayyat_mart_app/ui/widgets/bg_widget.dart';
import 'package:hayyat_mart_app/ui/widgets/button_wideget.dart';
import 'package:hayyat_mart_app/ui/widgets/custom_text_filed.dart';
import 'package:hayyat_mart_app/ui/widgets/rich_text_widget.dart';
import 'package:hayyat_mart_app/ui/widgets/textstyle_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: applogoWidget(),
            ),
            //  Text("Log in to $appname",style: TextStyle(),)
            SizedBox(
              height: 8.h,
            ),
            TextStyleWidget(
                label: "Log in to $appname",
                fontSize: 18.sp,
                color: whiteColor,
                fontFamily: 'bold'),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 310.w,
              // height: 180.h,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(blurRadius: 2.0.r, color: Colors.grey
                    //spreadRadius: 2
                    ),
              ], color: whiteColor, borderRadius: BorderRadius.circular(10.r)),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    customTextField(label: 'Email', hint: 'Email'),
                    customTextField(label: 'Password', hint: 'Password'),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: RichTextWidget(
                        text: "Forget Password",
                        color: Colors.blue,
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: BtnWidget(
                          label: 'Login',
                          backgroundColor: Colors.red,
                          textColor: whiteColor,
                          onPressed: () => Get.toNamed(home)),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    TextStyleWidget(
                        label: 'or, create a new account', color: fontGrey),
                    SizedBox(
                      height: 5.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: BtnWidget(
                          label: 'Sign up',
                          backgroundColor: lightGolden,
                          textColor: redColor,
                          onPressed: () => Get.toNamed(signup)),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    TextStyleWidget(label: "Log in with", color: fontGrey),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          3,
                          (index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundColor: lightGrey,
                                  radius: 25.r,
                                  child: Image.asset(
                                    socialIconLiost[index],
                                    width: 30.w,
                                  ),
                                ),
                              )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
