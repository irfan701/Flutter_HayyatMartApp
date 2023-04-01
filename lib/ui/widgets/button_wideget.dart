import 'package:hayyat_mart_app/consts/consts.dart';

Widget BtnWidget(label, bgColor, textColor, onPress) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: bgColor, padding: EdgeInsets.all(12)),
      onPressed: onPress,
      child: Text(
        label,
        style: TextStyle(fontFamily: bold, color: textColor),
      ));
}
