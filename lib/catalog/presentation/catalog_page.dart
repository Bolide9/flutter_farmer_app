import 'package:flutter/material.dart';
import 'package:flutter_farmer_app/colors.dart';
import 'package:flutter_farmer_app/farmer/presentation/widgets/farmer_card.dart';
import 'package:line_icons/line_icons.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({
    super.key,
  });

  PreferredSizeWidget _buildAppBar() => AppBar(
        title: const Text(
          'Каталог',
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(LineIcons.search))
        ],
        elevation: 2,
        backgroundColor: greenColor,
      );

  Widget _buildFarmers(BuildContext context) => GridView.builder(
        shrinkWrap: true,
        itemCount: 5,
        padding: const EdgeInsets.only(top: 12),
        itemBuilder: (context, __) => FarmerCard(func: (context) => showModalBottomSheet(context: context, builder: (context) => _bottomSheet()),),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
      );

  Widget _card(BuildContext context, Widget child, String name) => InkWell(
        onTap: () {

        },
        child: Container(
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
              color: Color(0xFFEEEEEEE),
              boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 2)]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              child,
              const SizedBox(
                width: 20,
              ),
              Image.asset(name)
            ],
          ),
        ),
      );

  Widget _storeCard(String name) => InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(4.0),
          margin: const EdgeInsets.all(4.0),
          decoration: const BoxDecoration(
              color: Color(0xFFEEEEEEE),
              boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 2)]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.transparent,
                child: Image.asset(
                  name,
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Sea mosquete"),
                  TextButton(onPressed: () {}, child: const Text("Подробнее"))
                ],
              )
            ],
          ),
        ),
      );

  Widget _bottomSheet(){
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("png/food.png")
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 70,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  _card(context, Text("Все"), "png/food.png"),
                  _card(context, Text("Овощи"), "png/vegetables.png"),
                  _card(context, Text("Фрукты"), "png/fruit.png"),
                  _card(context, Text("Ягоды"), "png/berries.png"),
                  _card(context, Text("Мясо"), "png/meat.png"),
                  _card(context, Text("Злаки"), "png/zlak.png")
                ],
              ),
            ),
            SizedBox(
              height: 70,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  _storeCard("png/food.png"),
                  _storeCard("png/vegetables.png"),
                  _storeCard("png/fruit.png"),
                  _storeCard("png/berries.png"),
                  _storeCard("png/meat.png"),
                  _storeCard("png/zlak.png")
                ],
              ),
            ),
            const SizedBox(height: 10),
            _buildFarmers(context),
          ],
        ),
      ),
    );
  }
}
