import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dashboard_view.dart';

void main() {
  runApp(
    // DevicePreview(
    //   enabled: true,
    //   builder: (context) => const ResponsiveDashboard(),
    // ),
    const ResponsiveDashboard(),
  );
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      home: DashboardView(),
    );
  }
}
