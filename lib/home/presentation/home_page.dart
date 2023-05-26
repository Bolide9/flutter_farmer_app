import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buildAddressWidget() => const Text(
        'ул. такая-то',
        style: TextStyle(
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      );

  PreferredSizeWidget _buildAppBar() => AppBar(
        elevation: 0,
        title: _buildAddressWidget(),
        backgroundColor: Colors.transparent,
      );

  Widget _buildPopularFarmers() => Container(
        color: Colors.redAccent.shade200,
        child: const Text('Продукты'),
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: _buildAppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: _buildPopularFarmers(),
            ),
          ],
        ),
      );
}
