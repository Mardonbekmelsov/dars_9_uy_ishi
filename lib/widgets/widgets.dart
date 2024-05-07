import 'package:dars_9_uy_ishi/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar mobileAppBar() {
  return AppBar(
      leading: TextButton(
        onPressed: () {},
        child: Row(
          children: [
            Text(
              "team.flow",
              style: GoogleFonts.josefinSans(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ],
        ),
      ),
      leadingWidth: 200.sp,
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.format_list_numbered_rounded))
      ]);
}

AppBar desktopAppBar() {
  return AppBar(
    leading: TextButton(
      onPressed: () {},
      child: Row(
        children: [
          Text(
            "team.flow",
            style: GoogleFonts.josefinSans(
                fontSize: 24.h,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
        ],
      ),
    ),
    leadingWidth: 150.w,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "How it Works",
          style: TextStyle(color: Colors.black, fontSize: 16.h),
        ),
        Text(
          "Product",
          style: TextStyle(color: Colors.black, fontSize: 16.h),
        ),
        Text(
          "Pricing",
          style: TextStyle(color: Colors.black, fontSize: 16.h),
        ),
        Text(
          "Resources",
          style: TextStyle(color: Colors.black, fontSize: 16.h),
        ),
      ],
    ),
    actions: [
      Row(
        children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Log in",
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple.shade200,
            ),
            child: const Text(
              "Get started free",
              style: TextStyle(color: Colors.deepPurple),
            ),
          ),
        ],
      )
    ],
  );
}

nameCompany(BuildContext context) {
  return MediaQuery.of(context).size.width > 800
      ? Row(
          children: [
            Container(
              padding: EdgeInsets.all(5.w),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Text(
                        "name@yourcompany.com",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            10.height(),
            Container(
              padding: EdgeInsets.all(5.w),
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(5)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Try It Free",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        )
      : Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.w),
              width: 318.w,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "name@yourcompany.com",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            10.height(),
            Container(
              width: 318.w,
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(5)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Try It Free",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        );
}

List<Widget> Invitations(double width) {
  return [
    Container(
        width: width > 800 ? 0.4.sw : 200.w,
        child: Image.asset("assets/images/invitations.png")),
    Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            border: width > 800
                ? const Border(
                    left: BorderSide(
                      color: Colors.deepPurple,
                      width: 3,
                    ),
                    bottom: BorderSide(
                      color: Colors.grey,
                    ),
                  )
                : const Border(
                    bottom: BorderSide(
                      color: Colors.deepPurple,
                      width: 3,
                    ),
                  ),
          ),
          width: width > 800 ? 0.4.sw : 350.w,
          height: 120.h,
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
          child: Column(
            children: [
              "Survey Your Team".boldStyle(),
              const Text(
                "Powerful question that get to the heart of how team members really feel",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            border: const Border(
              bottom: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
          width: width > 800 ? 0.4.sw : 350.w,
          height: 120.h,
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
          child: Column(
            children: [
              "Resolve Issues Quickly".boldStyle(),
              const Text(
                "Anonymus messages that connects managers and employees",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            border: const Border(
              bottom: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
          width: width > 800 ? 0.4.sw : 350.w,
          height: 120.h,
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
          child: Column(
            children: [
              "Plan Your 1-on-1s".boldStyle(),
              const Text(
                "Plan meetings together and give a stake employees and teams",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            border: const Border(
              bottom: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
          width: width > 800 ? 0.4.sw : 350.w,
          height: 120.h,
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
          child: Column(
            children: [
              "Track Your Progress".boldStyle(),
              const Text(
                "Easy-to-read reports and sharable results help managers and teams",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
      ],
    ),
  ];
}

makeWork(String heading, String info, Widget image, double width) {
  return Container(
    width: width > 800 ? 0.25.sw : 350.w,
    child: Column(
      crossAxisAlignment: width>800? CrossAxisAlignment.start:CrossAxisAlignment.center,
      children: [
        Container(
          height: 50.h,
          decoration: BoxDecoration(shape: BoxShape.circle),
          child: image,
        ),
        heading.boldStyle(),
        Text(
          info,
          style: TextStyle(color: Colors.black),
          textAlign: width>800? TextAlign.start:TextAlign.center,
        ),
        20.height(),
      ],
    ),
  );
}
