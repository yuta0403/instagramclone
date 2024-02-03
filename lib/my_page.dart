import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);
  final images = [
    'https://pixabay.com/get/g28288d7ec2f679a835a995e67fe2343153a6f65f97914f30c21bdb8a30a65fe0a3cee4604fba4de9dee4a21ae5e5c012_640.jpg',
    'https://pixabay.com/get/gf2c1bc67e8c3ff3c46c244f7f72769f2f59f744987a08a3828740410b43279f9b613cfd5960e07c0ff907982b961e03b_640.jpg',
    'https://pixabay.com/get/g0a89cad54a630905916a7dd09cad1b75c967f5451fd296af62b4eb5b0ca167915e57f8bacc548495cda9f2b33de84fdc_640.jpg',
    'https://pixabay.com/get/g708a80ac89942dcb7688cf5b71e4fc8b0c5073ca3db0a2c68a9ee8e34f226c551a846d11345759d2647a127f20f5c8a9_640.jpg',
    'https://pixabay.com/get/g32a1e3fca49ba3b0f3a77e1b137a96e7194316b3a056e4715852bc2fd254edbe8aa0aaef7334d2608369ab46e5e68512_640.jpg',
    'https://pixabay.com/get/g68db932b4ee44a957f00574f3f8f2d436653a60d3e9df8820886ee3fa6761ea0f867f19fb0dad2f38fdcf122070772bd4a2d5c5876dc385ee0a8da4263784e12_640.jpg',
    'https://pixabay.com/get/g5980a7c4e8311a32fcfdd20b08b8005947b08b6745db12100b5067f3fc881de88e66f6172eba5f7699a3f4d3969f37c24a48e0005844f248cc3eda10a6a60bd2_640.jpg',
    'https://pixabay.com/get/g73d66a26f458271155a14b5a20ba9fd620198e610ea854e2794333f700afdf7863bd1e4b40600dc86053c7a2e4ce7d7604b33c0b4e5aef6988d767cde82b6fab_640.jpg',
    'https://pixabay.com/get/g41c5e1f2ca8cdabc6b8554d8077c5a2ee4457fa8659d0b381d24524c4002ba2add17fe6210e7f6b5d37997f7b46da173_640.jpg',
    'https://pixabay.com/get/g81ee830ec3af5308f5b77f1800db0ac23fbe1eb7ae67e765adeeb6fc031167077ca993de9ec641b7cc6e02a5bbd716252cc76bffe1ac7daa30d350f6c73a9dbb_640.jpg',
    'https://pixabay.com/get/g1e71efc59d592f185ac55ea9fea8ff47bf1bf1ae49d06672f151d4f081fe0af061e93218bb3187f21908ec4f3d5a065f063a36bde414da24c9c622a69bff2dcc_640.jpg',
    'https://pixabay.com/get/g64559913ece7dc24ead40a9086a735f95fbf4aee6fb7bb020a0601d8226a58cb6a9f75315a5e06cd976029ccf222a3d6_640.jpg',
  ];

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
