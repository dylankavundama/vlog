import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vlog/story_ui.dart';

class scrollStory extends StatefulWidget {
  const scrollStory({super.key});

  @override
  State<scrollStory> createState() => _scrollStoryState();
}

class _scrollStoryState extends State<scrollStory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
        
          Container(
            color: Colors.black,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.network(ima),
          ),
          Container(
            color: Colors.green,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}
