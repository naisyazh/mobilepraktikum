import 'package:flutter/material.dart';
import '../provider/dashboard_provider.dart';
import '../widget/dashboard_widget.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  final DashboardProvider provider = DashboardProvider();

  @override
  Widget build(BuildContext context) {
    final menus = provider.getMenus();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: ListView.builder(
        itemCount: menus.length,
        itemBuilder: (context, index) {
          return DashboardWidget(menu: menus[index]);
        },
      ),
    );
  }
}