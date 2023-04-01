import 'package:hayyat_mart_app/consts/consts.dart';

Widget TextStyleWidget({label, fontSize, color, fontFamily}) {
  return Text(label,
      style:
          TextStyle(fontSize: fontSize, color: color, fontFamily: fontFamily));
}
