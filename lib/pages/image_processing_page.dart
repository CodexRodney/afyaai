// page for the dashboard
import 'package:afyaaidemo/customs/customs.dart';
import 'package:afyaaidemo/services/services.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImgProcessPage extends StatelessWidget {
  const ImgProcessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
                child: CustomText(
              label: "Upload Image",
              size: 32,
              isBold: true,
            )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.47,
            child: Image.asset(
              "assets/images/img_process.png",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FilledButton.tonalIcon(
              style: FilledButton.styleFrom(
                maximumSize: const Size(400, 100),
                minimumSize: const Size(400, 100),
                backgroundColor: const Color(0xFFd60812),
              ),
              onPressed: () async {
                ImagePicker()
                    .pickImage(source: ImageSource.gallery)
                    .then((value) {
                  value?.readAsBytes().then((value) async {
                    // send photo as byte64 encoded
                    // value is the picture
                    var response = await imageProcessReq(value);
                    print(response);
                    if (response[1] == 200) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Displaying the image
                                  Image.memory(
                                    value, // Replace with your image URL
                                    width: 450, // Set the desired width
                                    height: 450, // Set the desired height
                                    fit: BoxFit.cover,
                                  ),
                                  // SizedBox(
                                  //     width:
                                  //         16), // Adding space between image and summary
                                  // Displaying the summary
                                  Text(
                                    'anomalystatus: ${response[0]['anomalystatus']}',
                                    style: TextStyle(fontSize: 16),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    'information: ${response[0]['information']}',
                                    style: TextStyle(fontSize: 16),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    'confidence: ${response[0]['confidence']}',
                                    style: TextStyle(fontSize: 16),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Row(
                            children: [
                              // Displaying the image
                              Image.memory(
                                value, // Replace with your image URL
                                width: 300, // Set the desired width
                                height: 30, // Set the desired height
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                  width:
                                      16), // Adding space between image and summary
                              // Displaying the summary
                              Expanded(
                                child: Text(
                                  'This is the summary of the image. It provides a brief description of the content depicted in the image.',
                                  style: TextStyle(fontSize: 16),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  });
                });
              },
              icon: const Icon(
                Icons.image_rounded,
                color: Colors.white,
              ),
              label: const CustomText(
                label: "From Gallery",
                textcolor: Colors.white,
                size: 21,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
