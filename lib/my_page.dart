import 'package:flutter/material.dart';

//マイページを作成,画像アドレスをimagesに
class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);
  final images = [
    'https://plus.unsplash.com/premium_photo-1664297844174-d7dfb8d0e7f1?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzd8fHByb2dyYW18ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1607743386830-f198fbd7f9c4?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fHByb2dyYW18ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1587620931276-d97f425f62b9?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHByb2dyYW18ZW58MHx8MHx8fDA%3D',
    'https://plus.unsplash.com/premium_photo-1678565546661-bf43274dd428?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjV8fHByb2dyYW18ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1579403124614-197f69d8187b?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHByb2dyYW18ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1504639725590-34d0984388bd?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHByb2dyYW18ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1533279443086-d1c19a186416?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHByb2dyYW18ZW58MHx8MHx8fDA%3D',
    'https://plus.unsplash.com/premium_photo-1675842663249-a8b70103dbaa?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHByb2dyYW18ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1522202176988-66273c2fd55f?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHByb2dyYW18ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1542831371-d531d36971e6?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cHJvZ3JhbXxlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1587620962725-abab7fe55159?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZ3JhbXxlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1617529497471-9218633199c0?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZ3JhbXxlbnwwfHwwfHx8MA%3D%3D',
  ];

//マイページUIを作成
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('フィード')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  //instagramアイコンの画像アドレス
                  Image.network(
                    'https://appliv-domestic.akamaized.net/v1/600x/r/articles/129815/13877626_1604328764_041813000_0_1500_1500.jpeg',
                    width: 60,
                    height: 60,
                  ),
                  const Spacer(),
                  const Column(
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
                  const Column(
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
                  const Column(
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
              const Text(
                'instagram',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const Text(
                '#YoursToMake',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              const Text(
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
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            child: const Text(
                              'フォロー中',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            child: const Text(
                              'メッセージ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
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
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              //メモ
              //shrinkWrap: true` : GridViewを親Widgetのサイズに合わせる。
              //`physics: NeverScrollableScrollPhysics()` : GridViewが独自にスクロールしないようにする。
              //`crossAxisCount: 3` : 横方向に3つの要素を表示する。
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                children: images.map((imageUrl) {
                  //InstagramPostItemを185行目に抽出
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
