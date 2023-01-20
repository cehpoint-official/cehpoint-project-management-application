import 'package:cehpoint_project_management/screens/ProjectManager/weekly_feedback.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class ReportDetails extends StatefulWidget {
  const ReportDetails({Key? key}) : super(key: key);

  @override
  State<ReportDetails> createState() => _ReportDetailsState();
}

class _ReportDetailsState extends State<ReportDetails> {
  var _value = "-1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
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
                          "REPORT DETAILS",
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
                const SizedBox(height: 130),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(
                        child: DropdownButtonFormField(
                          dropdownColor: Colors.white,
                          isExpanded: false,
                          value: _value,
                          items: const [
                            DropdownMenuItem(
                              child: Text(
                                "Add week",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff7F7F7F)),
                              ),
                              value: "-1",
                            ),
                            DropdownMenuItem(
                              child: Text("Week 1"),
                              value: "1",
                            ),
                            DropdownMenuItem(
                              child: Text("Week 2"),
                              value: "2",
                            ),
                            DropdownMenuItem(
                              child: Text("Week 3"),
                              value: "3",
                            ),
                            DropdownMenuItem(
                              child: Text("Week 4"),
                              value: "4",
                            ),
                            DropdownMenuItem(
                              child: Text("Week 5"),
                              value: "5",
                            ),
                          ],
                          onChanged: (v) {},
                        ),
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: const TextField(
                          style:  TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff7F7F7F)),
                          decoration: InputDecoration(
                            hintText: "Add Reort link",
                            hintStyle: TextStyle(
                              color: Color(0xff999999),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 300),
                      InkWell(
                        onTap: () {
                          Get.to(() => const WeeklyFeedback());
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xffD4C00B),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.add,
                                size: 30,
                                color: Colors.white,
                              ),
                              Text(
                                'SAVE REPORT',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
