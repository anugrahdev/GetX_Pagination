import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pagination/core/bindings/application_binding.dart';
import 'package:getx_pagination/core/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Getx Pagination',
        initialBinding: ApplicationBinding(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        getPages: routes);
  }
}
