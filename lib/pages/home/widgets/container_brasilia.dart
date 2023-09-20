import 'package:clima_ufg/core/colors.dart';
import 'package:clima_ufg/pages/home/controller.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ContainerBrasilia extends GetWidget<HomeController> {
  const ContainerBrasilia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomeController());
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 100,
      width: 300,
      decoration: BoxDecoration(
        color: defaultBlue.withOpacity(0.5),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.network(
                  'https://www.melhoresdestinos.com.br/wp-content/uploads/2019/02/passagens-aereas-brasilia-capa2019-01.jpg')
              .image,
        ),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Opacity(
            opacity: 0.9,
            child: Container(
              height: 60,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(50.0),
                  topLeft: Radius.circular(50.0),
                ),
                gradient: LinearGradient(
                  colors: [
                    controller.temp < 30 ? defaultBlue : defaultRed,
                    controller.temp < 30 ? defaultGreen : defaultYellow,
                  ],
                ),
              ),
              child: Center(
                child: Obx(() => Text(
                      '${controller.temp}°',
                      style: const TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: defaultWhite,
                          shadows: [
                            Shadow(
                              color: defaultBlack,
                              blurRadius: 10.0,
                              offset: Offset(
                                2.0,
                                2.0,
                              ),
                            )
                          ]),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
