import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final imgList = [
  'https://plus.unsplash.com/premium_photo-1673984261110-d1d931e062c0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZ3JhbXxlbnwwfHwwfHx8MA%3D%3D',
  'https://plus.unsplash.com/premium_photo-1673984261110-d1d931e062c0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZ3JhbXxlbnwwfHwwfHx8MA%3D%3D',
  'https://plus.unsplash.com/premium_photo-1673984261110-d1d931e062c0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZ3JhbXxlbnwwfHwwfHx8MA%3D%3D',
];

class FeedPage extends StatelessWidget {
  FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('フィード')),
      //縦スクロールを追加
      body: SingleChildScrollView(
        child: Column(
          //左寄せ
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  //ロゴを挿入
                  Image.network(
                    'https://appliv-domestic.akamaized.net/v1/600x/r/articles/129815/13877626_1604328764_041813000_0_1500_1500.jpeg',
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(width: 8),
                  const Column(
                    children: [
                      Text(
                        'instagram',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text('サンディエゴ'),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(
                      Icons.more_horiz,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            CarouselWithIndicatorDemo(),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.favorite_border,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.message,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.send,
                  ),
                  onPressed: () {},
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(
                    Icons.bookmark_border_outlined,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                '「いいね！」100,000件',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Flutter, Google UI toolkit, enables efficient cross-platform app development with its rapid hot reload, versatile widget architecture, and seamless integration across mobile, web, and desktop. Supported by Dart, Flutter offers an enjoyable coding experience and visually appealing designs, backed by a vibrant community and major platform support.',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final themeMode = ValueNotifier(2);

class Carousel extends StatelessWidget {
  const Carousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) { {
        return MaterialApp(
          initialRoute: '/',
          darkTheme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (ctx) => CarouselDemoHome(),
            '/basic': (ctx) => BasicDemo(),
            '/image': (ctx) => ImageSliderDemo(),
            '/vertical': (ctx) => VerticalSliderDemo(),
            '/fullscreen': (ctx) => FullscreenSliderDemo(),
            '/indicator': (ctx) => CarouselWithIndicatorDemo(),
          },
        );
      }
  }
}

class DemoItem extends StatelessWidget {
  final String title;
  final String route;
  DemoItem(this.title, this.route);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}

class CarouselDemoHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel demo'),
        actions: [
          IconButton(
              icon: Icon(Icons.nightlight_round),
              onPressed: () {
                themeMode.value = themeMode.value == 1 ? 2 : 1;
              })
        ],
      ),
      body: ListView(
        children: <Widget>[
          DemoItem('Basic demo', '/basic'),
          DemoItem('Fullscreen carousel slider', '/fullscreen'),
          DemoItem('Carousel with indicator controller demo', '/indicator'),
        ],
      ),
    );
  }
}

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2, 3, 4, 5];
    return Scaffold(
      appBar: AppBar(title: Text('Basic demo')),
      body: Container(
          child: CarouselSlider(
        options: CarouselOptions(),
        items: list
            .map((item) => Container(
                  child: Center(child: Text(item.toString())),
                  color: Colors.green,
                ))
            .toList(),
      )),
    );
  }
}

class ImageSliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image slider demo')),
      body: Container(
          child: CarouselSlider(
        options: CarouselOptions(),
        items: imgList
            .map((item) => Container(
                  child: Center(
                      child:
                          Image.network(item, fit: BoxFit.cover, width: 1000)),
                ))
            .toList(),
      )),
    );
  }
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class VerticalSliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Vertical sliding carousel demo')),
      body: Container(
          child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          scrollDirection: Axis.vertical,
          autoPlay: true,
        ),
        items: imageSliders,
      )),
    );
  }
}

class FullscreenSliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fullscreen sliding carousel demo')),
      body: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return CarouselSlider(
            options: CarouselOptions(
              height: height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              // autoPlay: false,
            ),
            items: imgList
                .map((item) => Container(
                      child: Center(
                          child: Image.network(
                        item,
                        fit: BoxFit.cover,
                        height: height,
                      )),
                    ))
                .toList(),
          );
        },
      ),
    );
  }
}

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Carousel with indicator controller demo')),
      body: Column(children: [
        Expanded(
          child: CarouselSlider(
            items: imageSliders,
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}

// class InstagramPostItem extends StatelessWidget {
//   InstagramPostItem({Key? key, required this.imageUrl}) : super(key: key);
//   final String imageUrl;
//   @override
//   Widget build(BuildContext context) {
//     return Image.network(
//       imageUrl,
//       fit: BoxFit.cover,
//     );
//   }
// }
// }
