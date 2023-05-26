import 'package:flutter/material.dart';
import 'package:flutter_farmer_app/ui/review_card.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../ui/expandable_page_view.dart';

class FarmerPage extends StatefulWidget {
  const FarmerPage({
    super.key,
  });

  @override
  State<FarmerPage> createState() => _FarmerPageState();
}

class _FarmerPageState extends State<FarmerPage> {
  late final PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(viewportFraction: 0.92);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const green = Color(0xFF42AB44);
    const TextStyle secondaryTextStyle =
        TextStyle(fontSize: 12, color: Colors.black54);
    const TextStyle primaryBold = TextStyle(fontWeight: FontWeight.bold);

    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.share))],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    const Placeholder(),
                    Transform.translate(
                      offset: const Offset(0, 20),
                      child: const CircleAvatar(radius: 40, child: Text("fe")),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("Название",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 20),
                    const Text(
                        "Love this plugin! Does exactly what it is supposed to do and so far without any real issues. (You might want to review some Dummy Text generation which contains words and even sentences with a meaning and that should not suppose to happen)"),
                    const Text("Все описание", style: TextStyle(color: green)),
                    const SizedBox(height: 10),
                    const Divider(),
                    const SizedBox(height: 10),

                    // Блок условий доставки и оплаты
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Icon(Icons.menu),
                          SizedBox(width: 10),
                          Text(
                            "Условия доставки и оплаты",
                            style: primaryBold,
                          ),
                        ],
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 10),
                            Text(
                              "Минимальная сумма заказа - 10000.00\$",
                              style: secondaryTextStyle,
                            ),
                            Text("Доставка по всей России",
                                style: secondaryTextStyle),
                            SizedBox(height: 15),
                            Text(
                              "Оплата: Наличными, Банковской картой",
                              style: secondaryTextStyle,
                            ),
                            Text(
                              "Минимальная сумма заказа - 10000.00\$",
                              style: secondaryTextStyle,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Divider(),
                    const SizedBox(height: 10),
                    //

                    //Блок адреса доставки
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Icon(Icons.map),
                          SizedBox(width: 10),
                          Text(
                            "Адрес доставки",
                            style: primaryBold,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text("г.Урус-Мартан, Бруклинский район, дом 5",
                              style: secondaryTextStyle),
                        )),
                    const SizedBox(height: 10),
                    const Divider(),
                    const SizedBox(height: 10),
                    //

                    //Блок отзывов и оценок
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Оценки и отзывы", style: primaryBold),
                          const Row(
                            children: [
                              Icon(Icons.star_border_rounded,
                                  color: Colors.amber),
                              Text(" 4,9",
                                  style: TextStyle(fontSize: 24, color: green)),
                              Text(" / 7", style: TextStyle(fontSize: 24))
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                                border: const Border(),
                                borderRadius: BorderRadius.circular(5)),
                            height: 150,
                            child: ExpandablePageView(
                              controller: _pageController,
                              children: const [ReviewCard(), ReviewCard()],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: ElevatedButton(onPressed: () {  },
                              child: const Text("Связаться с продавцом", style: primaryBold)),
                            ),
                          ),
                          const SizedBox(height: 10)

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
