import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller.dart';

class SelectedCityInfo extends GetWidget<SelectedCityController> {
  const SelectedCityInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset('assets/pin.png'),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Obx(() => Text(
                '${controller.city}',
                style: GoogleFonts.alatsi(fontSize: 20.0),
              )),
        ),
      ],
    );
  }
}
