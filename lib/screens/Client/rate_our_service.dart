import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class RateOurService extends StatefulWidget {
  const RateOurService({Key? key}) : super(key: key);

  @override
  State<RateOurService> createState() => _RateOurServiceState();
}

class _RateOurServiceState extends State<RateOurService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: AppBar().preferredSize.height,
                // padding: const EdgeInsets.symmetric(horizontal: 20),
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
                        "FEEDBACK",
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 90),
              Container(
                width: MediaQuery.of(context).size.width - 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.star,
                      size: 50,
                      color: Color(0xffFFE555),
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                      color: Color(0xffFFE555),
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                      color: Color(0xffFFE555),
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                      color: Color(0xffFFE555),
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                      color: Color(0xffFFE555),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 230),
              Container(
                width: MediaQuery.of(context).size.width,
                child: const TextField(
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Describe your opinion",
                    hintStyle: TextStyle(
                      color: Color(0xff999999),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 240),
              InkWell(
                onTap: () {
                  // Get.to(() => const WeeklyFeedback());
                },
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.60,
                  height: 55,
                  decoration: BoxDecoration(
                    color: const Color(0xffD4C00B),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    'SUBMIT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
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