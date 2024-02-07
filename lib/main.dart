import 'package:flutter/material.dart';
import 'feed_page.dart';
import 'my_page.dart';

//アプリ起動
void main() {
  runApp(const MyApp());
}

//アプリの定義、タイトルやMaterial3を採用など
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'instagramclone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'instagramclone'),
    );
  }
}

//ページを定義
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//起動時開くページと、各ページを呼び出すリストを追加
class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final _pageWidgets = [
    FeedPage(),
    MyPage(),
  ];

//ナビゲーションバーの名前をフィードとマイページにし、タップするとonItemTappedを呼び出す
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageWidgets.elementAt(_currentIndex),
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

//タップした際の処理を追加
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
