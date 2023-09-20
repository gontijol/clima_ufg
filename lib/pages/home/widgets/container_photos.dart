import 'package:clima_ufg/core/colors.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ContainerPhoto extends GetWidget {
  const ContainerPhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 100,
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
              width: 110,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50.0),
                    topLeft: Radius.circular(50.0),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      defaultBlue,
                      defaultGreen,
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
