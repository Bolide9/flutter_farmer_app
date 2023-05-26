import 'package:flutter/material.dart';

class FarmerPage extends StatelessWidget {
  const FarmerPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Название",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 20),
                    Text(
                        "Love this plugin! Does exactly what it is supposed to do and so far without any real issues. (You might want to review some Dummy Text generation which contains words and even sentences with a meaning and that should not suppose to happen)"),
                    Text("Все описание",
                        style: TextStyle(color: Color(0xFF42AB44))),
                    SizedBox(height: 10),
                    Divider(),
                    SizedBox(height: 10),

                    // Блок условий доставки и оплаты
                    Align(
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
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
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
                    SizedBox(height: 10),
                    Divider(),
                    SizedBox(height: 10),
                    //

                    //Блок адреса доставки
                    Align(
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
                    Align(alignment: Alignment.centerLeft, child: Text("г.Урус-Мартан, Бруклинский район, дом 5", style: secondaryTextStyle)),
                    SizedBox(height: 10),
                    Divider(),
                    SizedBox(height: 10),
                    //

                    //Блок отзывов и оценок
                    Align(alignment: Alignment.centerLeft, child: Text("г.Урус-Мартан, Бруклинский район, дом 5", style: secondaryTextStyle)),



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
