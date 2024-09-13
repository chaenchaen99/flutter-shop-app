import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_shadow.dart';
import 'image_widgets.dart';
import 'text_widgets.dart';

Widget appTextField({
  String text = "",
  String iconName = "",
  String hintText = "Type your email",
  bool obscureText = false,
  void Function(String value)? func,
}) {
  return Container(
    padding: EdgeInsets.only(left: 25.w, right: 25.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14Normal(text: text),
        const SizedBox(height: 5),
        Container(
          width: 325.w,
          height: 50.h,
          decoration: appBoxDecorationTextField(),
          //row contains icon and textfield
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 8.w),
                child: appImage(imagePath: iconName),
              ),
              SizedBox(
                width: 190.w,
                height: 50.h,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                  onChanged: (value) => func!(value),
                  maxLines: 1,
                  autocorrect: false,
                  obscureText: obscureText,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
