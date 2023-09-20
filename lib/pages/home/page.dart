import 'package:clima_ufg/core/colors.dart';
import 'package:clima_ufg/pages/home/controller.dart';
import 'package:clima_ufg/pages/home/widgets/city_info.dart';
import 'package:clima_ufg/pages/home/widgets/container_brasilia.dart';
import 'package:clima_ufg/pages/home/widgets/container_goiania.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200.0),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    defaultGreen,
                    defaultBlue,
                  ],
                )),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        // onTap: () => {Get.toNamed('/selected_city')},
                        child: Image.asset('assets/menu_superior.png'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: Get.height * 0.16,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: defaultBlack.withOpacity(0.4),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(0.0, 2.0))
                  ],
                  color: defaultWhite,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(30.0),
                  ),
                ),
                child: Center(
                  child: Container(
                    height: Get.height * 0.05,
                    width: Get.width * 0.7,
                    decoration: BoxDecoration(
                      border: Border.all(color: defaultBlue),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 8.0),
                      child: TextFormField(
                        cursorColor: defaultBlue,
                        decoration: const InputDecoration(
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Icon(Icons.search, color: defaultGreen),
                          ),
                          border: InputBorder.none,
                        ),
                        style: const TextStyle(
                          color: defaultBlack,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20.0),
              const CityInfo(),
              InkWell(
                onTap: () => {Get.toNamed('/selected_city')},
                child: SizedBox(
                  width: Get.width,
                  height: Get.height * 0.3,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const ContainerGoiania();
                      }),
                ),
              ),
              //Brasilia
              const SizedBox(height: 20.0),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('assets/pin.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Brasília',
                      style: GoogleFonts.alatsi(fontSize: 20.0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: Get.width,
                height: Get.height * 0.3,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const ContainerBrasilia();
                    }),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: defaultWhite,
              selectedItemColor: defaultBlue,
              unselectedItemColor: defaultGreen,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              currentIndex: controller.menuIndex.value,
              onTap: (index) async => controller.changeIndex(index),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'Search'),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.star), label: 'Favorites'),
              ],
            )),
      ),
    );
  }
}
