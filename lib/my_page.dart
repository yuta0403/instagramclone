import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);
  final images = [
    'https://static.xx.fbcdn.net/rsrc.php/v3/y_/r/2wPYyq9Ejn4.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvoSuexQoraIJ3Xc8Qde7Y_A-7v7vfwWxveA&usqp=CAU',
    'https://www.pakutaso.com/shared/img/thumb/kaigoIMGL8113.jpg',
    'https://news.value-press.com/wp-content/uploads/interview_top_image_pakutaso.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('マイページ')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.network(
                    'https://appliv-domestic.akamaized.net/v1/600x/r/articles/129815/13877626_1604328764_041813000_0_1500_1500.jpeg',
                    width: 60,
                    height: 60,
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        '7,041',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text('投稿'),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Column(
                    children: [
                      Text(
                        '4.6億',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text('フォロワー'),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Column(
                    children: [
                      Text(
                        '99',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text('フォロー'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'instagram',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                '#YoursToMake',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              Text(
                'help.instagram.com',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              'フォロー中',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              'メッセージ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 4),
                  OutlinedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                    ),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  )
                ],
              ),
              //shrinkWrap: true` : GridViewを親Widgetのサイズに合わせます。
              //`physics: NeverScrollableScrollPhysics()` : GridViewが独自にスクロールしないようにします。（今回のコードでは、GridViewはSingleChildScrollViewの中にあるため、全体が一緒にスクロールします。）
              //`crossAxisCount: 3` : 横方向に3つの要素を表示します。
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                children: images.map((imageUrl) {
                  return InstagramPostItem(imageUrl: imageUrl);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
