// page for the dashboard
import 'package:afyaaidemo/customs/customs.dart';
import 'package:afyaaidemo/services/services.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImgProcessPage extends StatefulWidget {
  ImgProcessPage({super.key});
  int waiting = 3;

  @override
  State<ImgProcessPage> createState() => _ImgProcessPageState();
}

class _ImgProcessPageState extends State<ImgProcessPage> {
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
                    setState(() {
                      print("I am here");
                      widget.waiting = 0;
                    });
                    // send photo as byte64 encoded
                    // value is the picture
                    var response = await imageProcessReq(value);
                    setState(() {
                      print("I am here");
                      widget.waiting = 1;
                    });
                    print(response);
                    if (response[1] == 200 &&
                        response[0]['status'] == "success") {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.5,
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
                                child: Card(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      // Displaying the image
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.memory(
                                          value, // Replace with your image URL
                                          width: 450, // Set the desired width
                                          height: 450, // Set the desired height
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      // SizedBox(
                                      //     width:
                                      //         16), // Adding space between image and summary
                                      // Displaying the summary
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
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
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const Card(
                            child: CustomText(
                              label: "Something Went Wrong",
                              textcolor: Colors.red,
                            ),
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
          widget.waiting == 0
              ? const CircularProgressIndicator(
                  color: Colors.black,
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
