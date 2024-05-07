import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension Box on int {
  height() {
    return SizedBox(height: toDouble().h);
  }
}

extension Style on String{
  boldStyle(){
    return Text(this, style: TextStyle(fontWeight:FontWeight.bold, fontSize: 18.h),);
  }
}