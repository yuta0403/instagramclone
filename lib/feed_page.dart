import 'package:flutter/material.dart';

//FeedPageを作成、画像アドレスをimagesに
class FeedPage extends StatelessWidget {
  FeedPage({Key? key}) : super(key: key);
  final images = [
    'https://plus.unsplash.com/premium_photo-1673984261110-d1d931e062c0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZ3JhbXxlbnwwfHwwfHx8MA%3D%3D',
  ];

//フィードUIを作成
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('フィード')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  //instagramアイコンの画像アドレス
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
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 1,
              children: images.map((imageUrl) {
                //InstagramPostItemを126行目に抽出
                return InstagramPostItem(imageUrl: imageUrl);
              }).toList(),
            ),
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
                Padding(
                  //画面中央にフィードに似せたアイコンを追加
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: IconButton(
                    icon: const Icon(
                      Icons.more_horiz,
                    ),
                    onPressed: () {},
                  ),
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

//InstagramPostItemの中身を定義
class InstagramPostItem extends StatelessWidget {
  InstagramPostItem({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
    );
  }
}
