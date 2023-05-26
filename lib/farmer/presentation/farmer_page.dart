import 'package:flutter/material.dart';
import 'package:flutter_farmer_app/colors.dart';
import 'package:flutter_farmer_app/reviews/presentation/widgets/review_card.dart';
import 'package:line_icons/line_icons.dart';

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

  List<Widget> _buildReviewCards() {
    final parts = <Widget>[];

    for (int index = 0; index < 5; index++) {
      parts.add(
        const Padding(
          padding: EdgeInsets.only(right: 8),
          child: ReviewCard(
            rating: 5,
            userName: 'Test User',
            reviewComment: 'Test Comment\nTest comment\n\nTest Comment',
          ),
        ),
      );
    }

    return parts;
  }

  @override
  void initState() {
    _pageController = PageController(viewportFraction: 0.95);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const green = Color(0xFF42AB44);

    const TextStyle secondaryTextStyle = TextStyle(
      fontSize: 12,
      color: Colors.black54,
    );

    const TextStyle primaryBold = TextStyle(
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          ),
        ],
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
                      child: const CircleAvatar(
                        radius: 40,
                        child: Text("fe"),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Название",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Love this plugin! Does exactly what it is supposed to do and so far without any real issues. (You might want to review some Dummy Text generation which contains words and even sentences with a meaning and that should not suppose to happen)",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.7),
                      ),
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 24),
                      child: Text(
                        "Все описание",
                        style: TextStyle(
                          color: green,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Divider(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: const [
                          Icon(
                            LineIcons.stream,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Условия доставки и оплаты",
                            style: primaryBold,
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            SizedBox(height: 10),
                            Text(
                              "Минимальная сумма заказа - 1000 ₽",
                              style: secondaryTextStyle,
                            ),
                            Text("Доставка по всей России", style: secondaryTextStyle),
                            SizedBox(height: 15),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Доставка по всей России",
                                    style: secondaryTextStyle,
                                  ),
                                  TextSpan(
                                    text: "Доставка по всей России",
                                    style: secondaryTextStyle,
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "Оплата: Наличными\nБанковской картой",
                              style: secondaryTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Divider(),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: const [
                          Icon(
                            LineIcons.map,
                          ),
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
                        child: Text("г.Урус-Мартан, Бруклинский район, дом 5", style: secondaryTextStyle),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Divider(),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Оценки и отзывы", style: primaryBold),
                          Row(
                            children: const [
                              Icon(
                                Icons.star_border_rounded,
                                color: Colors.amber,
                              ),
                              Text(
                                " 4,9",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: green,
                                ),
                              ),
                              Text(
                                " / 7",
                                style: TextStyle(
                                  fontSize: 24,
                                ),
                              )
                            ],
                          ),
                          ExpandablePageView(
                            controller: _pageController,
                            children: _buildReviewCards(),
                          ),
                          const SizedBox(height: 10),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  "Связаться с продавцом",
                                  style: primaryBold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
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
