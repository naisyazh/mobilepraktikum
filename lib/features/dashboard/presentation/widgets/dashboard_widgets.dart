import 'package:flutter/material.dart';
import '../../data/models/dashboard_model.dart';

class DashboardCard extends StatelessWidget {

  final DashboardModel data;

  const DashboardCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),

      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: data.color.withOpacity(0.2),
          child: Icon(data.icon, color: data.color),
        ),

        title: Text(data.title),

        subtitle: Text(
          "Total: ${data.total}",
          style: TextStyle(
            color: data.color,
            fontWeight: FontWeight.bold,
          ),
        ),

        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}