import 'package:flutter/material.dart';

// ignore: camel_case_types
class UI_News extends StatelessWidget {
  const UI_News(
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
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9, // Élargir si nécessaire
        height: 130,
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  image,
                  height: 130,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10), // Espacement entre les widgets
              Expanded(
                // Permet à la colonne de s'ajuster automatiquement
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      titre,
                      style: TextStyle(color: Colors.black, fontSize: 18,),maxLines: 2,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      desc,
                      overflow: TextOverflow.ellipsis,
                      maxLines:
                          2, // Pour éviter trop de texte sur plusieurs lignes
                    ),
                    Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.alarm,
                            size: 18,
                          ),
                          Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Text(
                              date,
                              style: TextStyle(color: Colors.black54),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Text("BBC"),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
