import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class FarmerCard extends StatelessWidget {
  const FarmerCard({super.key, required this.func});

  final Function func;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                margin: const EdgeInsets.all(4.0),
                padding: const EdgeInsets.all(4.0),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(5)),
                child: Image.asset(
                  "png/zlak.png",
                  width: 70,
                  height: 70,
                )),
            const SizedBox(
              height: 5,
            ),
            const Text('Пшеничная мука'),
            const SizedBox(
              height: 7,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "600\$", style: TextStyle(color: Colors.green)),
                  TextSpan(text: " / 1кг")
                ])),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("4.7"),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(LineIcons.star)
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () => func, child: Text("Заказать"))
          ],
        ),
      );
}
