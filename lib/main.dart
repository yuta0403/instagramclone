import 'package:flutter/material.dart';
import 'feed_page.dart';
import 'my_page.dart';

//アプリ起動
void main() {
  runApp(const MyApp());
}

//Material3を採用
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

//MyHomePageでUIのベースを作る
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//アプリ起動時、フィードが開くように設定
class _MyHomePageState extends State<MyHomePage> {
  //アプリ起動時、フィードが開くように定義
  int _currentIndex = 0;
  final _pageWidgets = [
    FeedPage(),
    MyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //PageWidgetsのリストから、_currentIndex番目のPageを呼ぶ
      body: _pageWidgets.elementAt(_currentIndex),
      //ナビゲーションを作成
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'フィード'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'マイページ'),
        ],
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }

//onTapの時、_currentIndexのPageを更新する
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
