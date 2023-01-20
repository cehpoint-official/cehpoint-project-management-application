import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AddProject extends StatefulWidget {
  const AddProject({Key? key}) : super(key: key);

  @override
  State<AddProject> createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          const SizedBox(height: 30),
                          const Text(
                            "Project Details",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xffD4C00B),
                            ),
                          ),
                          const SizedBox(height: 40),
                          //input fields
                          SizedBox(
                            height: 40,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 10,
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  child: const Icon(
                                    Icons.person,
                                    size: 30,
                                    color: Color(0xff999999),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: const TextField(
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: "CLIENT NAME",
                                      hintStyle: TextStyle(
                                        color: Color(0xff999999),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                          // Project Name
                          SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 10,
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  child: const Icon(
                                    Icons.article_outlined,
                                    size: 30,
                                    color: Color(0xff999999),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: const TextField(
                                    // controller: _firstNameController,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: "PROJECT NAME",
                                      hintStyle: TextStyle(
                                        color: Color(0xff999999),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                          // Project Starting Date
                          SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 10,
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  child: const Icon(
                                    Icons.date_range_outlined,
                                    size: 30,
                                    color: Color(0xff999999),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: const TextField(
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: "PROJECT STARTING DATE",
                                      hintStyle: TextStyle(
                                        color: Color(0xff999999),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                          // Project End Date
                          SizedBox(
                            height: 40,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 10,
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  child: const Icon(
                                    Icons.date_range_outlined,
                                    size: 30,
                                    color: Color(0xff999999),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: const TextField(
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: "PROJECT END DATE",
                                      hintStyle: TextStyle(
                                        color: Color(0xff999999),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                          // Phone Number Input
                          SizedBox(
                              height: 40,
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 10,
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    child: const Icon(
                                      Icons.call,
                                      size: 30,
                                      color: Color(0xff999999),
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    child: const TextField(
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                      decoration: InputDecoration(
                                        hintText: "PHONE NUMBER",
                                        hintStyle: TextStyle(
                                          color: Color(0xff999999),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          const SizedBox(height: 30),

                          // EMPLOYEE USER NAME
                          SizedBox(
                            height: 40,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    // color: Colors.greenAccent,
                                    height: 10,
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    child: const Icon(
                                      Icons.how_to_reg_sharp,
                                      size: 30,
                                      color: Color(0xff999999),
                                    )),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: const TextField(
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: "EMPLOYEE USER NAME",
                                      hintStyle: TextStyle(
                                        color: Color(0xff999999),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                          // Password
                          SizedBox(
                            height: 40,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 10,
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  child: const Icon(
                                    Icons.password_outlined,
                                    size: 30,
                                    color: Color(0xff999999),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: const TextField(
                                    obscureText: true,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0XFF00c39A),
                                        ),
                                      ),
                                      hintText: "PASSWORD",
                                      hintStyle: TextStyle(
                                        color: Color(0xff999999),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 50),
                        ],
                      ),
                      const SizedBox(height: 20),
                      // BUTTON ADD EMPLOYEE
                      Container(
                        height: 55,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0XFFD4C00B),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Text(
                            'SAVE PROJECT',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
