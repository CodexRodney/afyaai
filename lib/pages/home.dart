import 'package:afyaaidemo/customs/customs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            // width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: CustomTextField(
                    textController: TextEditingController(),
                    textLabel: "Search",
                    suffixIcon: Icons.search,
                  ),
                ),
                const Spacer(),
                CircleAvatar(
                  backgroundColor: Color(0xFF0f305e),
                  foregroundColor: Color(0xFF0f305e),
                  radius: 35,
                  child: Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomText(
              label: "Shortcuts",
              isBold: true,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.4,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  DashBoardCard(
                    featureIcon: "assets/images/image_proce.png",
                    featureName: "Image Process",
                  ),
                  Spacer(),
                  DashBoardCard(
                    featureIcon: "assets/images/diagnosis.png",
                    featureName: "Diabetes Diagnosis",
                  ),
                  Spacer(),
                  DashBoardCard(
                    featureIcon: "assets/images/risk_asses.png",
                    featureName: "Risk Assessment",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DashBoardCard extends StatelessWidget {
  const DashBoardCard({
    super.key,
    required this.featureName,
    required this.featureIcon,
  });
  final String featureName;
  final String featureIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.15,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                label: featureName,
                isBold: true,
                size: 21,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              child: Image.asset(
                featureIcon,
                scale: 1,
                fit: BoxFit.fill,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomText(
                label: "Tap And See The Magic",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
