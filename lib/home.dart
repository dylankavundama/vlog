import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Vlog"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width *
                0.9, // Élargir si nécessaire
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
          ),
        ],
      ),
    );
  }
}
