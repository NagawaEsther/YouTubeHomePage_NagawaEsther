import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final String title; 


  const VideoCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
       child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            color: Colors.grey[800], 
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title, 
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const Text(
                      'Channel Name • 1M views • 2 days ago',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
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
       )
    );
  }
}
