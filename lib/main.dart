import 'package:hayyat_mart_app/consts/consts.dart';
import 'package:hayyat_mart_app/ui/route/route.dart';
import 'package:hayyat_mart_app/ui/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.transparent,
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.transparent,
            ),
            fontFamily: regular,
            //primarySwatch: Colors.blue,
          ),
          initialRoute: splash,
          getPages: getPages,
          home: SplashScreen(),
        );
      },
    );
  }
}
