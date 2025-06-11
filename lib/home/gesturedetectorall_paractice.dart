import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paractice/controllers/gesturedetection_controller.dart';
import 'package:paractice/home/switch_paractice.dart';

class GesturedetectorallParactice extends StatelessWidget {
  GesturedetectorallParactice({super.key});

  final GesturedetectionController controller = Get.put(
    GesturedetectionController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Gesture Detector All Paractice"),
      ),
      body: GetBuilder<GesturedetectionController>(
        builder: (controller) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("On Tap simple Tap"),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () => Get.to(SwitchParactice()),
                    child: CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage("assets/profile.png"),
                    ),
                  ),

                  SizedBox(height: 30),
                  Text("Geture Detector Double Tap"),
                  SizedBox(height: 10),
                  // GestureDetector(
                  //   onDoubleTap: () {
                  //     setState(() {
                  //       isLiked = true;
                  //     });
                  //   },
                  //   child: Stack(
                  //     children: [
                  //       Image.asset("assets/profile.jpg"),
                  //       if (isLiked)
                  //         Center(
                  //           child: Icon(
                  //             Icons.favorite,
                  //             color: Colors.red,
                  //             size: 100,
                  //           ),
                  //         ),
                  //     ],
                  //   ),
                  // ),
                  GestureDetector(
                    onDoubleTap: () {
                      controller.scales =
                          controller.scales == 1.0 ? 2.0 : 1.0; // Toggle zoom
                      controller.update();
                    },
                    child: Transform.scale(
                      scale: controller.scales,
                      child: Image.asset('assets/profile.png'),
                    ),
                  ),

                  SizedBox(height: 30),
                  Text("Long press"),
                  SizedBox(height: 10),
                  GestureDetector(
                    onLongPress: () {
                      showModalBottomSheet(
                        context: context,
                        builder:
                            (ctx) => SizedBox(
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text("Save Image"),
                                    onTap: () {},
                                  ),
                                  ListTile(title: Text("Share"), onTap: () {}),
                                ],
                              ),
                            ),
                      );
                    },
                    child: Image.asset("assets/profile.png"),
                  ),

                  SizedBox(height: 30),
                  Text("onHorizontalDragEnd"),
                  SizedBox(height: 10),
                  GestureDetector(
                    onHorizontalDragEnd: (details) {
                      if (details.primaryVelocity! > 0) {
                        // Left swipe
                        controller.currentImageIndex =
                            (controller.currentImageIndex - 1) %
                            controller.galleryImages.length;
                      } else {
                        // Right swipe
                        controller.currentImageIndex =
                            (controller.currentImageIndex - 1) %
                            controller.galleryImages.length;
                      }
                      controller.update();
                    },
                    child: Image.asset(
                      "assets/${controller.galleryImages[controller.currentImageIndex]}",
                    ),
                  ),

                  SizedBox(height: 30),
                  Text("onScaleUpdate"),
                  SizedBox(height: 10),
                  GestureDetector(
                    onScaleUpdate: (details) {
                      controller.scales = details.scale;
                      controller.update();
                    },
                    child: Transform.scale(
                      scale: controller.scales,
                      child: Image.asset("assets/profile.png"),
                    ),
                  ),

                  SizedBox(height: 30),
                  Text("onPanUpdate"),
                  SizedBox(height: 10),
                  Container(
                    height: 300,
                    width: double.infinity,
                    color:
                        Colors
                            .grey[200], // Optional: background color to see area
                    child: Stack(
                      children: [
                        Positioned(
                          top: controller.top,
                          left: controller.left,
                          child: GestureDetector(
                            onPanUpdate: (details) {
                              controller.top += details.delta.dy;
                              controller.left += details.delta.dx;
                              controller.update();
                            },
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage("assets/profile.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 30),
                  Text(
                    "All Apply Gesture onDoubleTap, onLongPress, onScaleUpdate",
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onDoubleTap: () {
                      controller.isLiked = true;
                      // Heart animation dikhao
                      controller.update();
                    },
                    onLongPress: () => showOptionsMenu(context),
                    onScaleUpdate: (details) {
                      controller.scale = details.scale.clamp(0.8, 3.0);
                      controller.update();
                    },
                    child: Stack(
                      children: [
                        Transform.scale(
                          scale: controller.scale,
                          child: Image.asset("assets/profile.png"),
                        ),
                        if (controller.isLiked)
                          Center(
                            child: Icon(
                              Icons.favorite,
                              size: 100,
                              color: Colors.red,
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void showOptionsMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.save),
              title: Text("Save Post"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
