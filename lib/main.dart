import 'package:cehpoint_project_management/Controllers/authenticationController.dart';
import 'package:cehpoint_project_management/screens/Authentication/login_screen.dart';
import 'package:cehpoint_project_management/screens/ProjectManager/add_project.dart';
import 'package:cehpoint_project_management/screens/ProjectManager/add_report.dart';
import 'package:cehpoint_project_management/screens/ProjectManager/project_manager_landing_screen.dart';
import 'package:cehpoint_project_management/screens/ProjectManager/report_details.dart';
import 'package:cehpoint_project_management/screens/ProjectManager/weekly_feedback.dart';
import 'package:cehpoint_project_management/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  AuthenticationController authenticationController =
      Get.put(AuthenticationController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}
