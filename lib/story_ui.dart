
import 'package:flutter/material.dart';

class ui_story extends StatelessWidget {
  const ui_story({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.network(
            fit: BoxFit.cover,
            height: 160,
            width: 100,
            'https://madriduniversal.com/wp-content/uploads/2024/08/real-madrid-cf-v-real-valladolid-cf-laliga-ea-sports-1-scaled.jpg'),
      ),
    );
  }
}
