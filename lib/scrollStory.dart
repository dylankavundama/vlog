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
            child: Image.network(

              fit: BoxFit.cover,
                'https://images.pexels.com/photos/27451299/pexels-photo-27451299/free-photo-of-a-man-in-a-suit-and-tie-holding-an-umbrella.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          ),

            Container(
            color: Colors.black,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.network(              fit: BoxFit.cover,
               'https://images.pexels.com/photos/27347647/pexels-photo-27347647/free-photo-of-a-man-in-a-suit-and-tie-smoking-a-cigarette.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          ),
        ],
      ),
    );
  }
}
