import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  MyPage({super.key});

  final images = [
    'https://picsum.photos/200',
    'https://picsum.photos/201',
    'https://picsum.photos/202',
    'https://picsum.photos/203',
    'https://picsum.photos/204',
    'https://picsum.photos/205',
    'https://picsum.photos/200',
    'https://picsum.photos/201',
    'https://picsum.photos/202',
    'https://picsum.photos/203',
    'https://picsum.photos/204',
    'https://picsum.photos/205',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('マイページ')),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(children: [
              Image.network(
                'https://cdn2.iconfinder.com/data/icons/social-media-2285/512/1_Instagram_colored_svg_1-512.png',
                width: 60,
                height: 60,
              ),
              Spacer(),
              Column(children: [
                const Text(
                  '7,041',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                const Text('投稿'),
              ]),
              const SizedBox(width: 16),
              Column(children: [
                const Text(
                  '4.6億',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                const Text('投稿'),
              ]),
              const SizedBox(width: 16),
              Column(children: [
                const Text(
                  '99',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                const Text('フォロー中'),
              ]),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Instagram',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(
                  '#YoursToMake',
                  style: TextStyle(color: Colors.blue, fontSize: 17),
                ),
                Text(
                  'help.instagram.com',
                  style: TextStyle(color: Colors.blue, fontSize: 17),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 0, right: 16, bottom: 16, left: 16),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // mainAxisAlignment: ,
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
                                fontSize: 13),
                          ),
                          // style: OutlinedButton.styleFrom(
                          //   shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(4),
                          //     // side: const BorderSide(color: Colors.red
                          //   ),
                          // ),
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
                                fontSize: 13),
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
                ),
              ],
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            primary: false,
            crossAxisCount: 3,
            children: images.map((imageUrl) {
              return InstagramPostItem(imageUrl: imageUrl);
            }).toList(),
          )
        ]),
      ),
    );
  }
}

class InstagramPostItem extends StatelessWidget {
  const InstagramPostItem({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(imageUrl);
  }
}
