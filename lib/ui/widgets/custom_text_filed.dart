import 'package:hayyat_mart_app/consts/consts.dart';

Widget customTextField({label, hint, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label,
          style: TextStyle(
              fontSize: 14.sp, fontFamily: semibold, color: redColor)),
      SizedBox(
        height: 3.h,
      ),
      TextFormField(
        //controller: controller,
        decoration: InputDecoration(
            hintStyle: TextStyle(fontFamily: semibold, color: textfieldGrey),
            hintText: hint,
            isDense: true,
            fillColor: lightGrey,
            filled: true,
            border: InputBorder.none,
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: redColor))),
      ),
      SizedBox(
        height: 6.h,
      )
    ],
  );
}
