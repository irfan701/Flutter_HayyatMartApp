import 'package:hayyat_mart_app/consts/consts.dart';
import 'package:hayyat_mart_app/ui/route/route.dart';
import 'package:hayyat_mart_app/ui/widgets/applogo_widget.dart';
import 'package:hayyat_mart_app/ui/widgets/bg_widget.dart';
import 'package:hayyat_mart_app/ui/widgets/button_wideget.dart';
import 'package:hayyat_mart_app/ui/widgets/custom_text_filed.dart';
import 'package:hayyat_mart_app/ui/widgets/rich_text_widget.dart';
import 'package:hayyat_mart_app/ui/widgets/textstyle_widget.dart';

class SignupScreen extends StatelessWidget {
  RxBool isChecked = false.obs;

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
            SizedBox(
              height: 8.h,
            ),
            TextStyleWidget(
                label: "Join the $appname",
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
                    customTextField(label: 'Name', hint: 'Name'),
                    customTextField(label: 'Email', hint: 'Email'),
                    customTextField(label: 'Password', hint: '***'),
                    customTextField(label: 'RePassword', hint: '***'),
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
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        Obx(
                          () => Checkbox(
                            value: isChecked.value,
                            onChanged: (value) {
                              isChecked.value = value!;
                            },
                            activeColor: redColor,
                          ),
                        ),
                        Expanded(
                            child: RichTextWidget(
                          text: "I agree to the ",
                          color: fontGrey,
                          text1: "Terms and Conditions ",
                          color1: redColor,
                          text2: "& ",
                          color2: fontGrey,
                          text3: "Privacy Policy",
                          color3: redColor,
                          fontFamily: regular,
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: Obx(() => BtnWidget(
                              label: 'Sign up',
                              backgroundColor: isChecked.value == true
                                  ? redColor
                                  : lightGrey,
                              textColor: whiteColor,
                            ))),
                    RichTextWidget(
                      text: "Already have an account? ",
                      color: fontGrey,
                      text3: "Log in",
                      color3: redColor,
                      fontFamily: bold,
                      routeName: signin,
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
