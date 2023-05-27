import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xFF42AB44),
                  Color(0xFF115622),
                ],
              ),
            ),
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  elevation: 0,
                  floating: true,
                  pinned: true,
                  expandedHeight: 160.0,
                  // title: const Text("Грозный"),
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.door_back_door,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.account_circle,
                      ),
                    ),
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    title: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        // child: TextField(
                        //   style: const TextStyle(fontSize: 10),
                        //   decoration: InputDecoration(
                        //       border: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(20.0)),
                        //       label: const Icon(LineIcons.search)),
                        // ),
                        child: const Row(
                          children: [
                            Text("Грозный"),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(LineIcons.locationArrow, color: Colors.white70,)
                          ],
                        )),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      color: const Color(0xFFEEEEEE),
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: CustCard(
                                      color: Colors.amberAccent,
                                      child: Text("Hello"),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: CustCard(
                                      color: Colors.pink,
                                      child: Text("Hello"),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: CustCard(
                                  color: Colors.cyan,
                                  child: Text("Hello"),
                                ),
                              )
                            ],
                          ),
                          Card(
                            color: Colors.white30,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Лучшие продукты с ферм",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      TextButton(
                                        onPressed: () {},
                                        child: const Text("Все >"),
                                      ),
                                    ],
                                  ),
                                  GridView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemBuilder: (context, i) => SizedBox(
                                      height: 100,
                                      child: CustCard(
                                        color: Colors.blueGrey,
                                        child: Text("$i"),
                                      ),
                                    ),
                                    itemCount: 6,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                            childAspectRatio: 0.25),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ),
        ),
      );
}

class CustCard extends StatelessWidget {
  const CustCard({super.key, required this.color, required this.child});

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(4.0),
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
            boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 5)]),
        child: Center(child: child));
  }
}
