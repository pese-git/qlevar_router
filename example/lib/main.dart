import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qlevar_router/qlevar_router.dart';

import 'helpers/database.dart';
import 'routes.dart';

void main() {
  Get.put(Database(), permanent: true);
  QR.enableDebugLog = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {  
  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerDelegate: QR.router(AppRoutes().routes, initRoute: '/dashboard'),
        routeInformationParser: QR.routeParser(),
      );
}
