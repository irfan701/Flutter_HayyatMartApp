import 'package:hayyat_mart_app/consts/consts.dart';
import 'package:hayyat_mart_app/consts/lists.dart';
import 'package:hayyat_mart_app/ui/widgets/hom_btn_widget.dart';
import 'package:hayyat_mart_app/ui/widgets/textstyle_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              color: lightGrey,
              height: 60.h,
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    suffix: Icon(Icons.search),
                    filled: true,
                    fillColor: whiteColor,
                    hintText: "Search anything ...",
                    hintStyle: TextStyle(color: textfieldGrey)),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: slidersList.length,
                        itemBuilder: (_, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: ClipRRect(
                              clipBehavior: Clip.antiAlias,
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                slidersList[index],
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          2,
                          (index) => homeBtnWidget(
                                width: 130.w,
                                height: 100.h,
                                iconName:
                                    index == 0 ? icTodaysDeal : icFlashDeal,
                                label:
                                    index == 0 ? "Today's Deal" : "Flash Deal",
                              )),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: sliderListTwo.length,
                        itemBuilder: (_, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: ClipRRect(
                              clipBehavior: Clip.antiAlias,
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                sliderListTwo[index],
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          3,
                          (index) => homeBtnWidget(
                                width: 100.w,
                                height: 100.h,
                                iconName: index == 0
                                    ? icTopCategories
                                    : index == 1
                                        ? icBrands
                                        : icTopSeller,
                                label: index == 0
                                    ? "Top Categories"
                                    : index == 1
                                        ? "Band"
                                        : "Top Seller",
                              )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextStyleWidget(
                          label: "Featured Categoriesd",
                          fontFamily: semibold,
                          fontSize: 18.sp,
                          color: darkFontGrey),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
