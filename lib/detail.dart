import 'package:flutter/material.dart';

// ignore: camel_case_types
class detailPage extends StatefulWidget {
  const detailPage(
      {super.key,
      required this.date,
      required this.desc,
      required this.image,
      required this.titre});

  final String titre;
  final String desc;
  final String image;
  final String date;
  @override
  State<detailPage> createState() => _detailPageState();
}

// ignore: camel_case_types
class _detailPageState extends State<detailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.network(widget.image),
            ],
          ),
          const Divider(
            color: Colors.black45,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.titre,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text(widget.desc),
          Row(
            children: [const Icon(Icons.calendar_today), Text(widget.date)],
          )
        ],
      ),
    );
  }
}