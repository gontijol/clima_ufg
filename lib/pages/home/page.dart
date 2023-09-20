import 'package:clima_ufg/core/colors.dart';
import 'package:clima_ufg/pages/home/widgets/container_photos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clima UFG'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(Icons.location_on),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Goiânia',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: Get.width,
              height: Get.height * 0.3,
              color: defaultBlue.withOpacity(0.0),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const ContainerPhoto();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
