import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ClientLandingScreen extends StatefulWidget {
  const ClientLandingScreen({Key? key}) : super(key: key);

  @override
  State<ClientLandingScreen> createState() => _ClientLandingScreenState();
}

class _ClientLandingScreenState extends State<ClientLandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // color: Colors.greenAccent,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              // AppBar
              Container(
                height: AppBar().preferredSize.height,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "ADD PROJECT",
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(width: 40),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              //My Project with color background
              Container(
                color: Color(0xffF8EF95),
                height: 45,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      // color: Colors.cyanAccent,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: const Center(
                        child: Icon(
                          Icons.article_outlined,
                          size: 30,
                          color: Color(0xff999999),
                        ),
                      ),
                    ),
                    const Text(
                      "My Project",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
              // Manager Details
              Container(
                height: 180,
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Column(
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 10),
                        //Name of project manager
                        SizedBox(
                          height: 40,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              const Center(
                                child: Icon(
                                  Icons.person,
                                  size: 30,
                                  color: Color(0xff999999),
                                ),
                              ),
                              const SizedBox(width: 13),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: const Text(
                                  "Jit Banerjee",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Company name
                        SizedBox(
                          // color: Colors.greenAccent,
                          height: 40,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              const Center(
                                child: Icon(
                                  Icons.domain,
                                  size: 30,
                                  color: Color(0xff999999),
                                ),
                              ),
                              const SizedBox(width: 13),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: const Text(
                                  "CEHPOINT",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Contact number of project manager
                        SizedBox(
                          // color: Colors.greenAccent,
                          height: 40,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              const Center(
                                child: Icon(
                                  Icons.call,
                                  size: 30,
                                  color: Color(0xff999999),
                                ),
                              ),
                              const SizedBox(
                                width: 13,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: const Text(
                                  "+91 7039494588",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Date start and end of project
                        SizedBox(
                          height: 40,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              const Center(
                                child: Icon(
                                  Icons.date_range_outlined,
                                  size: 30,
                                  color: Color(0xff999999),
                                ),
                              ),
                              const SizedBox(width: 13),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: const Text(
                                  "05.01.2023 to 05.02.2023",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Project Name
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              // Weekly Report
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xffCCCCCC),
                    ),
                    top: BorderSide(
                      color: Color(0xffCCCCCC),
                    ),
                  ),
                ),
                alignment: Alignment.center,
                height: 35,
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  " WEEKLY REPORT",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
              ),
              const SizedBox(height: 14),
              // All Weeks Report List
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(12),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          clipBehavior: Clip.antiAlias,
                          margin: EdgeInsets.zero,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                              color: Color(0xffD4C00B),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12),
                                topLeft: Radius.circular(12),
                              ),
                            ),
                            child: ExpansionTile(
                              initiallyExpanded: false,
                              title: const Text(
                                'Week-1',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              children: [
                                //Project name and feedback
                                Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Column(
                                    children: [
                                      // MY Project
                                      SizedBox(
                                        height: 40,
                                        child: Row(
                                          children: const [
                                            Icon(
                                              Icons.article_outlined,
                                              size: 30,
                                              color: Color(0xff999999),
                                            ),
                                            SizedBox(
                                              width: 13,
                                            ),
                                            SizedBox(
                                              child: Text(
                                                "My Project Name",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16,),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      //UPDATE REPORT
                                      SizedBox(
                                        height: 40,
                                        child: Row(
                                          children: const [
                                            Icon(
                                              Icons.link,
                                              size: 30,
                                              color: Color(0xff999999),
                                            ),
                                            SizedBox(
                                              width: 13,
                                            ),
                                            SizedBox(
                                              child: Text(
                                                "Update Report",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(color: Colors.white, height: 18),

                                //View FeedBack
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 50,
                                  color: Colors.white,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff4A4A4A),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(12),
                                        bottomRight: Radius.circular(12),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.message_outlined,
                                          size: 23,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 13,
                                        ),
                                        Text(
                                          'VIEW FEEDBACK',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
