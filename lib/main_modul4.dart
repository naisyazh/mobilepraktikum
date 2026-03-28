import 'package:flutter/material.dart';
import 'core/constants/constants.dart';
import 'features/dashboard/presentation/page/dashboard_page.dart';
import 'features/dosen/presentation/page/dosen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      initialRoute: AppConstants.dashboardRoute,
      routes: {
        AppConstants.dashboardRoute: (context) => DashboardPage(),
        AppConstants.dosenRoute: (context) => DosenPage(),
      },
    );
  }
}