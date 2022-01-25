import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';

class DuaPrayerScreen extends StatefulWidget {
  const DuaPrayerScreen({Key? key}) : super(key: key);

  @override
  State<DuaPrayerScreen> createState() => _DuaPrayerScreenState();
}

class _DuaPrayerScreenState extends State<DuaPrayerScreen> {
  List<String> duaImages = [
    'https://img1.wsimg.com/isteam/ip/4eb57113-5b02-4def-bab1-b5bdeffd46e9/20190415_120042-0001.jpg/:/rs=w:370,cg:true,m',
    'https://img1.wsimg.com/isteam/ip/4eb57113-5b02-4def-bab1-b5bdeffd46e9/20190415_120024-0001.jpg/:/rs=w:370,cg:true,m',
    'https://img1.wsimg.com/isteam/ip/4eb57113-5b02-4def-bab1-b5bdeffd46e9/IMG-20190722-WA0084-0001.jpg/:/rs=w:370,cg:true,m',
    'https://img1.wsimg.com/isteam/ip/4eb57113-5b02-4def-bab1-b5bdeffd46e9/Screenshot_20190617-125209_YouTube-0001.jpg/:/rs=w:370,cg:true,m',
    'https://img1.wsimg.com/isteam/ip/4eb57113-5b02-4def-bab1-b5bdeffd46e9/Screenshot_20190724-100826_Hifazat%20Ki%20Dua-0001.jpg/:/rs=w:370,cg:true,m',
    'https://img1.wsimg.com/isteam/ip/4eb57113-5b02-4def-bab1-b5bdeffd46e9/Screenshot_20190724-100819_Hifazat%20Ki%20Dua-0001.jpg/:/rs=w:370,cg:true,m',
    'https://img1.wsimg.com/isteam/ip/4eb57113-5b02-4def-bab1-b5bdeffd46e9/20190415_120004-0001.jpg/:/rs=w:370,cg:true,m',
    'https://img1.wsimg.com/isteam/ip/4eb57113-5b02-4def-bab1-b5bdeffd46e9/20190415_120058-0001.jpg/:/rs=w:370,cg:true,m',
    'https://img1.wsimg.com/isteam/ip/4eb57113-5b02-4def-bab1-b5bdeffd46e9/image_c165f2c7-adc3-49b7-be4d-0dfc7b8b161-0001.jpg/:/rs=w:370,cg:true,m',
    'https://img1.wsimg.com/isteam/ip/4eb57113-5b02-4def-bab1-b5bdeffd46e9/8d4ef974b7e81238bf141fa0b766f190--dua-for-0001.jpg/:/rs=w:370,cg:true,m',
    'https://img1.wsimg.com/isteam/ip/4eb57113-5b02-4def-bab1-b5bdeffd46e9/IMG-20190721-WA0060-0001.jpg/:/rs=w:370,cg:true,m',
    'https://img1.wsimg.com/isteam/ip/4eb57113-5b02-4def-bab1-b5bdeffd46e9/image_c99c4ce7-6e15-4d22-b1a6-0dc192fa5cd-0001.jpg/:/rs=w:370,cg:true,m',
    'https://img1.wsimg.com/isteam/ip/4eb57113-5b02-4def-bab1-b5bdeffd46e9/IMG-20190722-WA0009-0001.jpg/:/rs=w:370,cg:true,m',
    'https://img1.wsimg.com/isteam/ip/4eb57113-5b02-4def-bab1-b5bdeffd46e9/image_4ce6c824-0836-46ed-a621-c57102a4a65-0001.jpg/:/rs=w:370,cg:true,m',
    'https://img1.wsimg.com/isteam/ip/4eb57113-5b02-4def-bab1-b5bdeffd46e9/Screenshot_20181018-154137_Gallery-0001.jpg/:/rs=w:370,cg:true,m',
    'https://img1.wsimg.com/isteam/ip/4eb57113-5b02-4def-bab1-b5bdeffd46e9/FB_IMG_1466801723665-0001.jpg/:/rs=w:370,cg:true,m',
    'https://img1.wsimg.com/isteam/ip/4eb57113-5b02-4def-bab1-b5bdeffd46e9/IMG-20190722-WA0004-0001.jpg/:/rs=w:370,cg:true,m',
    'https://img1.wsimg.com/isteam/ip/4eb57113-5b02-4def-bab1-b5bdeffd46e9/maxresdefault-0001.jpg/:/rs=w:370,cg:true,m',
    'https://img1.wsimg.com/isteam/ip/4eb57113-5b02-4def-bab1-b5bdeffd46e9/image_895aa464-6c3f-43d3-b384-a470c446d68-0001.jpg/:/rs=w:370,cg:true,m',
    'https://img1.wsimg.com/isteam/ip/4eb57113-5b02-4def-bab1-b5bdeffd46e9/IMG-20190722-WA0012-0001.jpg/:/rs=w:370,cg:true,m',
  ];

  final List<Map<String, dynamic>> _items = List.generate(
      200,
      (index) => {
            "id": index,
            "title": "Item $index",
            "height": Random().nextInt(150) + 50.5
          });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: MasonryGridView.count(
        itemCount: duaImages.length,

        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),

        // Number of columns
        crossAxisCount: 3,

        // vertical gap between two items
        mainAxisSpacing: 4,
        // horizontal gap between two items
        crossAxisSpacing: 4,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Image(
                        image: NetworkImage(
                          duaImages[index],
                        ),
                      ),
                    );
                  });
            },
            child: Card(
              // Give each item a random background color
              color: Color.fromARGB(
                  Random().nextInt(256),
                  Random().nextInt(256),
                  Random().nextInt(256),
                  Random().nextInt(256)),
              // key: ValueKey(
              //   _items[index]['id'],
              // ),
              child: SizedBox(
                height: _items[index][100],
                child: Center(
                  child: Image.network(
                    duaImages[index],
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
