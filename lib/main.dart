
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/home_routers.dart';

void main(List<String> args) {
  runApp(
    GetMaterialApp(
      initialRoute: '/home',
      getPages: [
        ...HomeRouters.routers,
      ],
    )
  );
}