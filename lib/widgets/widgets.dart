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
      crossAxisAlignment:
          width > 800 ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        Container(
          height: 50.h,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: image,
        ),
        heading.boldStyle(),
        Text(
          info,
          style: const TextStyle(color: Colors.black),
          textAlign: width > 800 ? TextAlign.start : TextAlign.center,
        ),
        20.height(),
      ],
    ),
  );
}

makeProfile(List<Map<String, dynamic>> accounts, double width) {
  return width > 800
      ? Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (var account in accounts)
              Row(
                children: [
                  Image.asset(
                    account["image"],
                    width: 50,
                    height: 50,
                  ),
                  Column(
                    children: [
                      Text(
                        account["name"],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        account["job"],
                      ),
                    ],
                  ),
                ],
              )
          ],
        )
      : Column(
          children: [
            Image.asset(
              accounts[0]["image"],
              width: 50,
              height: 50,
            ),
            Text(
              accounts[0]["name"],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              accounts[0]["job"],
            ),
          ],
        );
}

installBar(double width) {
  return [
    Container(
      width: width > 800 ? 0.35.sw : 0.7.sw,
      child: Text("84% of employees who use trust their direct manager",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
          textAlign: width < 800 ? TextAlign.center : TextAlign.start),
    ),
    width > 800
        ? Row(
            children: [
              Image.asset(
                "assets/images/google_play_logo.png",
                width: 180,
                height: 55,
              ),
              SizedBox(width: 10),
              Image.asset(
                "assets/images/app_store_logo.png",
                width: 180,
                height: 55,
              ),
            ],
          )
        : Column(
            children: [
              10.height(),
              Image.asset(
                "assets/images/google_play_logo.png",
                width: 180,
                height: 55,
              ),
              10.height(),
              Image.asset(
                "assets/images/app_store_logo.png",
                width: 180,
                height: 55,
              ),
            ],
          ),
  ];
}

companyColumn() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("About Us", style: TextStyle(color: Colors.white)),
      5.height(),
      Text("Blog", style: TextStyle(color: Colors.white)),
      5.height(),
      Text("Careers", style: TextStyle(color: Colors.white)),
      5.height(),
      Text("Contact Us", style: TextStyle(color: Colors.white)),
    ],
  );
}

supportColumn() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Help Center", style: TextStyle(color: Colors.white)),
      5.height(),
      Text("Safety Center", style: TextStyle(color: Colors.white)),
      5.height(),
      Text("Community", style: TextStyle(color: Colors.white)),
    ],
  );
}

legalColumn() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Cookies Policy", style: TextStyle(color: Colors.white)),
      5.height(),
      Text("Privacy Policy", style: TextStyle(color: Colors.white)),
      5.height(),
      Text("Terms Of Service", style: TextStyle(color: Colors.white)),
    ],
  );
}

installColumn() {
  return Column(
    children: [
      Text(
        "Install App",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      5.height(),
      Image.asset(
        "assets/images/google_play_dark.png",
        width: 165,
        height: 50,
      ),
      5.height(),
      Image.asset(
        "assets/images/app_store_dark.png",
        width: 165,
        height: 50,
      ),
    ],
  );
}
