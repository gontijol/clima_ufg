import 'package:clima_ufg/core/colors.dart';
import 'package:clima_ufg/pages/selected_city/controller.dart';
import 'package:clima_ufg/pages/selected_city/widgets/container_cidade.dart';
import 'package:clima_ufg/pages/selected_city/widgets/selected_city_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectedCity extends GetView<SelectedCityController> {
  const SelectedCity({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SelectedCityController());
    return SafeArea(
      child: Material(
        child: Container(
          color: defaultWhite,
          height: Get.height,
          width: Get.width,
          child: Column(
            children: [
              Container(
                height: Get.height * 0.9,
                width: Get.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      transform: const GradientRotation(-0.4),
                      colors: [
                        defaultGreen.withOpacity(0.4),
                        defaultBlue.withOpacity(0.7),
                      ],
                    ),
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(50.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const SelectedCityInfo(),
                          const ContainerCidade(),
                          Obx(() => Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.water_sharp),
                                      Text('${controller.humidity}%'),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Icon(
                                        Icons.water_drop,
                                        color: defaultWhite,
                                      ),
                                      Text('${controller.preciptation}%'),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Icon(Icons.thermostat),
                                      Text('${controller.feelsLike} C°'),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Icon(Icons.heat_pump),
                                      Text('${controller.uvIndex}'),
                                    ],
                                  ),
                                ],
                              )),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                Text(
                                  'Descrição',
                                  style: GoogleFonts.alatsi(
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              'Goiânia é a capital do estado de Goiás, localizado no centro-oeste do Brasil. Fundada em 1933, a cidade foi planejada e construída para ser a nova capital do estado, substituindo a antiga cidade de Goiás. Goiânia é conhecida por seu design urbano moderno, com avenidas largas, praças arborizadas e uma infraestrutura bem desenvolvida',
                              style: GoogleFonts.raleway(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () => Get.back(),
                          child: Container(
                            height: 70,
                            width: 150,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50.0),
                                    bottomRight: Radius.circular(50.0)),
                                gradient: LinearGradient(
                                    colors: [defaultGreen, defaultBlue])),
                            child: Center(
                                child: Text(
                              'Voltar',
                              style: GoogleFonts.alatsi(
                                  fontSize: 20.0, color: defaultWhite),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
