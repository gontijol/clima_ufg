import 'package:clima_ufg/pages/home/binding.dart';
import 'package:clima_ufg/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  runApp(
    GetMaterialApp(
      title: 'Clima UFG',
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.pages,
      initialBinding: HomeBinding(),
    ),
  );
}
