import 'package:dars_9_uy_ishi/pages/first_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(391,856),
      child: MaterialApp(
        home: FirstPage(),
      ),
    );
  }
}
