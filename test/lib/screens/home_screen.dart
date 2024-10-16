
// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Row(
//           children: [
//             Image.network(
//               'https://t4.ftcdn.net/jpg/07/37/98/99/240_F_737989984_yqhTN9GhvLeuUiLjUp9MSe1IacGNXlsl.jpg',
//               height: 30,
//             ),
//             const Spacer(),
//             IconButton(
//               icon: const Icon(Icons.search, color: Colors.black),
//               onPressed: () {},
//             ),
//             IconButton(
//               icon: const Icon(Icons.notifications, color: Colors.black),
//               onPressed: () {},
//             ),
//             IconButton(
//               icon: const Icon(Icons.account_circle, color: Colors.black),
//               onPressed: () {},
//             ),
//           ],
//         ),
//       ),
//       body: ListView(
//         children: [
//           _buildVideoCategorySection(),
//           _buildVideoSection(),
//           _buildShortsSection(),
//         ],
//       ),
//       bottomNavigationBar: _buildBottomNavigationBar(),
//     );
//   }

//   Widget _buildVideoCategorySection() {
//     return SizedBox(
//       height: 50,
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         children: [
//           _buildCategoryChip('All'),
//           _buildCategoryChip('Music'),
//           _buildCategoryChip('Gaming'),
//           _buildCategoryChip('News'),
//           _buildCategoryChip('Movies'),
//           _buildCategoryChip('Sports'),
//         ],
//       ),
//     );
//   }

//   Widget _buildCategoryChip(String label) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8),
//       child: Chip(
//         label: Text(label),
//         backgroundColor: Colors.grey[800],
//         labelStyle: const TextStyle(color: Colors.white),
//       ),
//     );
//   }

//   Widget _buildVideoSection() {
//     final List<Map<String, String>> videoData = [
//       {
//         'channelName': 'Music Channel',
//         'views': '1M views',
//         'uploadTime': '2 days ago',
//         'videoUrl': 'https://www.youtube.com/watch?v=GfVd5x9W1Xc&pp=ygUJc28gd2lsbCBp',
//       },
//       {
//         'channelName': 'Gaming Channel',
//         'views': '500K views',
//         'uploadTime': '3 days ago',
//         'videoUrl': 'https://www.youtube.com/watch?v=XYZ2',
//       },
//       {
//         'channelName': 'News Channel',
//         'views': '750K views',
//         'uploadTime': '1 week ago',
//         'videoUrl': 'https://www.youtube.com/watch?v=XYZ3',
//       },
//       {
//         'channelName': 'Movies Channel',
//         'views': '2M views',
//         'uploadTime': '1 day ago',
//         'videoUrl': 'https://www.youtube.com/watch?v=XYZ4',
//       },
//       {
//         'channelName': 'Sports Channel',
//         'views': '200K views',
//         'uploadTime': '5 days ago',
//         'videoUrl': 'https://www.youtube.com/watch?v=XYZ5',
//       },
//     ];

//     return Column(
//       children: videoData.map((video) {
//         return _buildVideoCard(
//           video['channelName']!,
//           video['views']!,
//           video['uploadTime']!,
//           video['videoUrl']!,
//         );
//       }).toList(),
//     );
//   }

//   Widget _buildVideoCard(
//     String channelName,
//     String views,
//     String uploadTime,
//     String videoUrl,
//   ) {
//     return GestureDetector(
//       onTap: () {
       
//       },
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 200,
//               color: Colors.grey[800], 
//               child: Center(
//                 child: Text(
//                   'Video Thumbnail',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 8),
//             Row(
//               children: [
//                 const CircleAvatar(
//                   backgroundColor: Colors.grey,
//                   radius: 20,
//                 ),
//                 const SizedBox(width: 10),
//                 Expanded(
//                   child: Text(
//                     '$channelName • $views • $uploadTime',
//                     style: const TextStyle(
//                       color: Color.fromARGB(255, 199, 35, 35),
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   icon: const Icon(Icons.more_vert, color: Colors.white),
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildShortsSection() {
//     return Column(
//       children: [
//         const Padding(
//           padding: EdgeInsets.all(8.0),
//           child: Text(
//             'Shorts',
//             style: TextStyle(color: Colors.white, fontSize: 18),
//           ),
//         ),
//         SizedBox(
//           height: 150,
//           child: ListView(
//             scrollDirection: Axis.horizontal,
//             children: List.generate(
//               5,
//               (index) => Container(
//                 width: 120,
//                 margin: const EdgeInsets.symmetric(horizontal: 8),
//                 color: Colors.grey[800], // Placeholder for short video thumbnail
//                 child: Center(
//                   child: Text(
//                     'Short Video $index',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildBottomNavigationBar() {
//     return BottomNavigationBar(
//       type: BottomNavigationBarType.fixed,
//       backgroundColor: Colors.black87,
//       selectedItemColor: Colors.white,
//       unselectedItemColor: Colors.grey,
//       items: const [
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.video_library),
//           label: 'Shorts',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.add_circle_outline),
//           label: 'Upload',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.subscriptions),
//           label: 'Subscriptions',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.account_circle),
//           label: 'You',
//         ),
//       ],
//     );
//   }
// }


import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.network(
              'https://t4.ftcdn.net/jpg/07/37/98/99/240_F_737989984_yqhTN9GhvLeuUiLjUp9MSe1IacGNXlsl.jpg',
              height: 30,
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.search, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.notifications, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.account_circle, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          _buildVideoCategorySection(),
          _buildVideoSection(),
          _buildShortsSection(),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildVideoCategorySection() {
    return SizedBox(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildCategoryChip('All'),
          _buildCategoryChip('Music'),
          _buildCategoryChip('Gaming'),
          _buildCategoryChip('News'),
          _buildCategoryChip('Movies'),
          _buildCategoryChip('Sports'),
        ],
      ),
    );
  }

  Widget _buildCategoryChip(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Chip(
        label: Text(label),
        backgroundColor: Colors.grey[800],
        labelStyle: const TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildVideoSection() {
    final List<Map<String, String>> videoData = [
      {
        'channelName': 'Music Channel',
        'views': '1M views',
        'uploadTime': '2 days ago',
        'thumbnailUrl': 'https://via.placeholder.com/320x180.png?text=Music+Video',
        'videoUrl': 'https://www.youtube.com/watch?v=GfVd5x9W1Xc&pp=ygUJc28gd2lsbCBp',
      },
      {
        'channelName': 'Gaming Channel',
        'views': '500K views',
        'uploadTime': '3 days ago',
        'thumbnailUrl': 'https://via.placeholder.com/320x180.png?text=Gaming+Video',
        'videoUrl': 'https://www.youtube.com/watch?v=GfVd5x9W1Xc&pp=ygUJc28gd2lsbCBp',
      },
      {
        'channelName': 'News Channel',
        'views': '750K views',
        'uploadTime': '1 week ago',
        'thumbnailUrl': 'https://via.placeholder.com/320x180.png?text=News+Video',
        'videoUrl': 'https://www.youtube.com/watch?v=GfVd5x9W1Xc&pp=ygUJc28gd2lsbCBp',
      },
      {
        'channelName': 'Movies Channel',
        'views': '2M views',
        'uploadTime': '1 day ago',
        'thumbnailUrl': 'https://via.placeholder.com/320x180.png?text=Sports+Video',
        'videoUrl': 'https://www.youtube.com/watch?v=GfVd5x9W1Xc&pp=ygUJc28gd2lsbCBp',
      },
      {
        'channelName': 'Sports Channel',
        'views': '200K views',
        'uploadTime': '5 days ago',
        'thumbnailUrl': 'https://via.placeholder.com/320x180.png?text=Sports+Video',
        'videoUrl': 'https://www.youtube.com/watch?v=GfVd5x9W1Xc&pp=ygUJc28gd2lsbCBp',
      },
    ];

    return Column(
      children: videoData.map((video) {
        return _buildVideoCard(
          video['channelName']!,
          video['views']!,
          video['uploadTime']!,
          video['thumbnailUrl']!,
          video['videoUrl']!,
        );
      }).toList(),
    );
  }

  Widget _buildVideoCard(
    String channelName,
    String views,
    String uploadTime,
    String thumbnailUrl,
    String videoUrl,
  ) {
    return GestureDetector(
      onTap: () {
        // Removed the url_launcher code
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              thumbnailUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 20,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '$channelName • $views • $uploadTime',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 199, 35, 35),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShortsSection() {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Shorts',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              5,
              (index) => Container(
                width: 120,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                color: Colors.grey[800], // Placeholder for short video thumbnail
                child: Center(
                  child: Text(
                    'Short Video $index',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black87,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_library),
          label: 'Shorts',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle_outline),
          label: 'Upload',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.subscriptions),
          label: 'Subscriptions',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'You',
        ),
      ],
    );
  }
}
