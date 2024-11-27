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
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9, // Élargir si nécessaire
      height: MediaQuery.of(context).size.height * 0.3,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  height: 100,
                  width: 90,
                  'https://images.pexels.com/photos/4427909/pexels-photo-4427909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10), // Espacement entre les widgets
              const Expanded(
                // Permet à la colonne de s'ajuster automatiquement
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Attaque du Liban par Israël",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Ce matin 16/09, l'armée israélienne a attaqué...",
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
                          Icon(
                            Icons.alarm,
                            size: 18,
                          ),
                          Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Text(
                              '18/09/1990',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 80),
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
