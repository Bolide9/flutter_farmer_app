import 'package:flutter/material.dart';
import 'package:flutter_farmer_app/farmer/presentation/farmer_page.dart';
import 'package:flutter_farmer_app/ui/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => const Scaffold(
    body: FarmerPage(),
        bottomNavigationBar: BottomNavBar(),
      );
}
