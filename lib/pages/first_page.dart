import 'package:dars_9_uy_ishi/utils/extensions.dart';
import 'package:dars_9_uy_ishi/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: screenWidth > 800 ? desktopAppBar() : mobileAppBar(),
      body: Expanded(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.grey.shade200,
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade100,
                      ),
                      child: Text(
                        "Get account of 59\$>",
                        style: TextStyle(fontSize: 13.h),
                      ),
                    ),
                  ],
                ),
                Container(
                  
                  width: 370.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Manage the team everyone wants to be on ",
                        style: GoogleFonts.inter(
                            fontSize: 30.h, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      10.height(),
                      const Text(
                          "Simple platform that lets you master what great managers do best, as develop trust, collaborate, and drive team performance.",
                          textAlign: TextAlign.center),
                      // Row(
                      //   children: [Container()],
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [nameCompany(context)],
                      )
                    ],
                  ),
                ),
                Image.asset("assets/images/overview_pic.png"),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("TRUSTED BY OVER "),
                        "10,000+".boldStyle(),
                        const Text(" WORLD'S BEST TEAMS "),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 350.w,
                            padding: const EdgeInsets.all(20),
                            child: screenWidth > 800
                                ? Image.asset("assets/images/logos.png")
                                : Image.asset("assets/images/logos_mobile.png"))
                      ],
                    ),
                  ],
                ),
                screenWidth > 800
                    ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: Invitations(screenWidth),
                      )
                    : Column(
                        children: Invitations(screenWidth),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
