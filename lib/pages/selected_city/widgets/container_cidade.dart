import 'package:clima_ufg/core/colors.dart';
import 'package:clima_ufg/pages/selected_city/controller.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ContainerCidade extends GetWidget<SelectedCityController> {
  const ContainerCidade({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 200,
      width: 300,
      decoration: BoxDecoration(
        color: defaultBlue.withOpacity(0.5),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.network(
                  'https://www.qualviagem.com.br/wp-content/uploads/2015/12/pra%C3%A7a-goiania-goias.jpg')
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
                    controller.tempC < 30 ? defaultBlue : defaultRed,
                    controller.tempC < 30 ? defaultGreen : defaultYellow,
                  ],
                ),
              ),
              child: Center(
                child: Obx(() => Text(
                      '${controller.tempC.value}°',
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
