import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'feactures/prodcut/di.dart';
import 'feactures/prodcut/presentation/modules/productos/producto_binding.dart';
import 'feactures/prodcut/presentation/modules/productos/producto_page.dart';

//mis cambios son nuevos

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Di.ini(),
      getPages: [
        GetPage(
          name: '/product',
          page: () => ProductoPage(),
          binding: ProductoBinding(),
        ),
      ],

      initialRoute: '/product',
    );
  }
}
