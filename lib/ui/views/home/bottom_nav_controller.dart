import 'package:hayyat_mart_app/consts/consts.dart';
import 'package:hayyat_mart_app/ui/views/cart/cart_screen.dart';
import 'package:hayyat_mart_app/ui/views/category/category_screen.dart';
import 'package:hayyat_mart_app/ui/views/home/home_screen.dart';
import 'package:hayyat_mart_app/ui/views/profile/profile_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var navBarItems = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26.w,
          ),
          label: "Home"),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26.w,
          ),
          label: "Category"),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26.w,
          ),
          label: "Cart"),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26.w,
          ),
          label: "Account"),
    ];
    var _currentIndex = 0.obs;
    var _pages = [
      const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const ProfileScreen()
    ];

    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: _currentIndex.value,
          items: navBarItems,
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: redColor,
          //unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(fontFamily: semibold),
          onTap: (value) {
            _currentIndex.value = value;
          },
        ),
      ),
      body: Obx(() => _pages[_currentIndex.value]),
    );
  }
}
