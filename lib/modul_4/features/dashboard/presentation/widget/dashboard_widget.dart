import 'package:flutter/material.dart';
import '../../data/models/dashboard_model.dart';

class DashboardWidget extends StatelessWidget {
  final DashboardModel menu;

  const DashboardWidget({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(menu.title),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          Navigator.pushNamed(context, menu.route);
        },
      ),
    );
  }
}