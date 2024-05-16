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
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
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
      width: MediaQuery.of(context).size.width * 0.2,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
              label: featureName,
              isBold: true,
              size: 21,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
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
