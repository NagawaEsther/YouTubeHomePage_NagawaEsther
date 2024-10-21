
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH6dow_QgTfElDMYeANJaIQM7CvRiftBRopg&s',
              width:150,
              height: 150,
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.notifications, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.account_circle, color: Colors.white),
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
        backgroundColor: Colors.black,
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
        'thumbnailUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJtmXoTraWXsRMlAl4uVHxq2BAIW6Q8sxd-f-g4Q-0_uiHxn7bnRjADh4&s',
      
      },
      {
        'channelName': 'Gaming Channel',
        'views': '500K views',
        'uploadTime': '3 days ago',
        'thumbnailUrl': 'https://media.istockphoto.com/id/1777139467/photo/soccer-goalkeeper-catching-ball.webp?a=1&b=1&s=612x612&w=0&k=20&c=ez0TLRhUsLgIGZwXJt_aYn_F1X5rfukYq0o6Lgeb5IQ=',
      
      },
      {
        'channelName': 'News Channel',
        'views': '750K views',
        'uploadTime': '1 week ago',
        'thumbnailUrl': 'https://img.freepik.com/premium-photo/anchorman-reading-news-headlines_482257-96459.jpg?size=626&ext=jpg&ga=GA1.1.22795147.1726897544&semt=ais_hybrid'
     
      },
      {
        'channelName': 'Movies Channel',
        'views': '2M views',
        'uploadTime': '1 day ago',
        'thumbnailUrl': 'https://e7.pngegg.com/pngimages/518/548/png-clipart-fx-movie-channel-logo-film-fox-movies-20th-century-fox-logo-television-text-thumbnail.png',
       
      },
      {
        'channelName': 'Sports Channel',
        'views': '200K views',
        'uploadTime': '5 days ago',
        'thumbnailUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbkKL4HVVL9ZksmEP_XCsegbFqJvxiLqy3iQ&s'
        
      },
      
    ];

    return Column(
      children: videoData.map((video) {
        return _buildVideoCard(
          video['channelName']!,
          video['views']!,
          video['uploadTime']!,
          video['thumbnailUrl']!,
         

        );
      }).toList(),
    );
  }

  Widget _buildVideoCard(
    String channelName,
    String views,
    String uploadTime,
    String thumbnailUrl,
   
  ) {
    return GestureDetector(
      onTap: () {
       
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
                  backgroundColor: Colors.black,
                  radius: 20,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '$channelName • $views • $uploadTime',
                    style: const TextStyle(
                      color: Colors.white,
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
