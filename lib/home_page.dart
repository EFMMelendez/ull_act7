import 'package:flutter/material.dart';
import 'package:melendez/tab_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Zapateria Melendez",
            style: TextStyle(fontSize: 16),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              child: Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Color(0xffd0ae6e),
                ),
                child: const TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: Color(0xffd79300),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black54,
                  tabs: [
                    TabItem(title: 'NIKE', count: 6),
                    TabItem(title: 'CONVERSE', count: 3),
                    TabItem(title: 'VANS', count: 1),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: const TabBarView(children: [
          Center(
            child: SizedBox(
              width: 380,
              height: 400,
              child: Card(
                color: Color(0xffe3bf5a),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "NIKE Air force 1",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Image(
                              image: NetworkImage(
                                  'https://raw.githubusercontent.com/EFMMelendez/img_Flutterflow-IOS_6j/main/flutterflow_melendez/airforce.png'),
                              height: 140,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 10,
                        height: 25,
                      ),
                      Icon(Icons.arrow_circle_right),
                      Text('Air force 1'),
                      Text('Casual'),
                      Text('Talla: 26'),
                      Text('Color: Blanco'),
                      Text('Disponibles: 10'),
                      Text('Garantia: 1 mes'),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: 380,
              height: 400,
              child: Card(
                color: Color(0xffe3bf5a),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "Converse",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Image(
                              image: NetworkImage(
                                  'https://raw.githubusercontent.com/EFMMelendez/img_Flutterflow-IOS_6j/main/flutterflow_melendez/converce.png'),
                              height: 140,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 10,
                        height: 25,
                      ),
                      Icon(Icons.arrow_circle_right),
                      Text('Converse All satr'),
                      Text('Casual'),
                      Text('Talla: 26'),
                      Text('Color: Blanco'),
                      Text('Disponibles: 10'),
                      Text('Garantia: 1 mes'),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: 380,
              height: 400,
              child: Card(
                color: Color(0xffe3bf5a),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "Vans",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Image(
                              image: NetworkImage(
                                  'https://raw.githubusercontent.com/EFMMelendez/img_Flutterflow-IOS_6j/main/flutterflow_melendez/vans.png'),
                              height: 140,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 10,
                        height: 25,
                      ),
                      Icon(Icons.arrow_circle_right),
                      Text('Vans old scool'),
                      Text('Casual'),
                      Text('Talla: 26'),
                      Text('Color: negro'),
                      Text('Disponibles: 10'),
                      Text('Garantia: 1 mes'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
