import 'package:afyaaidemo/customs/customs.dart';
import 'package:afyaaidemo/pages/diabetes_diagnosis_page.dart';
import 'package:afyaaidemo/pages/home.dart';
import 'package:afyaaidemo/pages/image_processing_page.dart';
import 'package:afyaaidemo/pages/risk_assesment_page.dart';
import 'package:afyaaidemo/pages/risk_questions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: "/",
      getPages: Routes.routes,
      home: SafeArea(
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    // Home Page
    HomePage(),
    // image Processing
    ImgProcessPage(),
    // Risk Assesment Page
    RiskQuestionsPage(),
    // Diabetes Diagnosis Page
    DiabetesDiagnosis(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.14,
            color: Colors.white,
            child: Drawer(
              shape: const BeveledRectangleBorder(),
              child: ListView(
                // Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.zero),
                        shape: BoxShape.rectangle,
                        color: Color(0xFF0f305e),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/images/logonam.png",
                          width: 10,
                        ),
                      )),
                  ListTile(
                    title: const CustomText(label: "Home"),
                    selected: _selectedIndex == 0,
                    onTap: () {
                      // Update the state of the app
                      _onItemTapped(0);
                      // Then close the drawer
                      // Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const CustomText(label: "Image Processing"),
                    selected: _selectedIndex == 1,
                    onTap: () {
                      // Update the state of the app
                      _onItemTapped(1);
                      // Then close the drawer
                      // Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const CustomText(label: "Risk Assessment"),
                    selected: _selectedIndex == 2,
                    onTap: () {
                      // Update the state of the app
                      _onItemTapped(2);
                      // Then close the drawer
                      // Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const CustomText(label: "Diabetes Diagnosis"),
                    selected: _selectedIndex == 3,
                    onTap: () {
                      // Update the state of the app
                      _onItemTapped(3);
                      // Then close the drawer
                      // Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.83,
            child: Center(
              child: _widgetOptions[_selectedIndex],
            ),
          ),
        ],
      ),
    );
  }
}
