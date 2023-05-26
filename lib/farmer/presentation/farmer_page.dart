import 'package:flutter/material.dart';

class FarmerPage extends StatelessWidget {
  const FarmerPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Placeholder(),
            Text(""),

          ],
        ),
      ),
    );
  }
}
