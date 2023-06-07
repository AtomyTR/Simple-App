import 'package:flutter/material.dart';
import 'package:simple_app/page_o.dart';
import 'package:simple_app/page_t.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: const RootPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = const [
    PageO(),
    PageT(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple App'),
      ),
      body: pages[currentPage],
      endDrawer: Drawer(
          child: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          Container(
            height: 100,
            color: Colors.amber,
            child: const Center(child: Text('Amber')),
          ),
          Container(
            height: 100,
            color: Colors.red,
            child: const Center(child: Text('Red')),
          ),
          Container(
            height: 100,
            color: Colors.blue,
            child: const Center(child: Text('Blue')),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('FloatingActionButton (Yuvarlak) ÇALIŞTI');
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Sayfa 1'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Sayfa 2')
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
