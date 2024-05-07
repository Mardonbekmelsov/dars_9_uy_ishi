import 'package:dars_9_uy_ishi/utils/extensions.dart';
import 'package:dars_9_uy_ishi/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatelessWidget {
  List<Map<String, dynamic>> benefits = [
    {
      "heading": "Team Surveys & Reports",
      "info":
          "Short, anonymous surveys track your team's needs weekly so you can focus.",
      "image": Image.asset("assets/images/icon_1.png")
    },
    {
      "heading": "Collaborative 1:1 ",
      "info": "Build relationships by planning 1-on-1s and start meetings.",
      "image": Image.asset("assets/images/icon_2.png")
    },
    {
      "heading": "Learning Center",
      "info":
          "Quickly get solutions tailored to your personal challenges from the manager.",
      "image": Image.asset("assets/images/icon_3.png")
    },
    {
      "heading": "Anonymmus Messaging",
      "info": "Develop trust in a safe channel for important conversations.",
      "image": Image.asset("assets/images/icon_4.png")
    },
    {
      "heading": "Conversation Engine",
      "info": "Communicate confidently with recommended talking points.",
      "image": Image.asset("assets/images/icon_5.png")
    },
    {
      "heading": "Exclusives Manager",
      "info":
          "Access manager tips, activities and best practices from our team of experts..",
      "image": Image.asset("assets/images/icon_6.png")
    },
  ];
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
                20.height(),
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
                      20.height(),
                      const Text(
                          "Simple platform that lets you master what great managers do best, as develop trust, collaborate, and drive team performance.",
                          textAlign: TextAlign.center),
                      20.height(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [nameCompany(context)],
                      ),
                    ],
                  ),
                ),
                20.height(),
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
                    20.height(),
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
                20.height(),
                screenWidth > 800
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: Invitations(screenWidth),
                      )
                    : Column(
                        children: Invitations(screenWidth),
                      ),
                20.height(),
                Text(
                  "Make Your Work Easier",
                  style: GoogleFonts.inter(
                    fontSize: 30.h,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                20.height(),
                screenWidth > 800
                    ? Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (int i = 0; i < 3; i++)
                                makeWork(
                                    benefits[i]["heading"],
                                    benefits[i]["info"],
                                    benefits[i]["image"],
                                    screenWidth)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (int i = 3; i < 6; i++)
                                makeWork(
                                    benefits[i]["heading"],
                                    benefits[i]["info"],
                                    benefits[i]["image"],
                                    screenWidth)
                            ],
                          )
                        ],
                      )
                    : Column(
                        children: [
                          for (int i = 0; i < 3; i++)
                            makeWork(
                                benefits[i]["heading"],
                                benefits[i]["info"],
                                benefits[i]["image"],
                                screenWidth)
                        ],
                      ),
                15.height(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
