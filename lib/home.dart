import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:vlog/detail.dart';
import 'package:vlog/scrollStory.dart';
import 'package:vlog/story_ui.dart';
import 'package:vlog/ui.dart';
import 'package:http/http.dart' as http;
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> post = [];
  bool _isLoading = false;

  recupData() async {
    setState(() {
      _isLoading = true;
    });

    const url = 'https://couleur-afrique.org/vma/video.php';
    final uri = Uri.parse(url);
    final reponse = await http.get(uri);
    final List resultat = jsonDecode(reponse.body);
    post = resultat;
    resultat.sort(
      (a, c) => c["id"].compareTo(a["id"]),
    );
    debugPrint(resultat.toString());
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    recupData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        // ignore: prefer_const_constructors
        label: Text('Story'),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const scrollStory(),
              ));
        },
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Vlog"),
      ),
      // body:   List.generate(
      //   post.length., (index) => GestureDetector(

      //     child: UI_News(
      //       image: post[index]['image'] ,
      //          titre: post[index]['titre'] ,
      //          desc: '',

      //          date: '',

      //     ),
      //   )

      // )
      //

      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
              post.length,
              (index) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => YoutubePlayer(
                              // controller: _controller,
                              controller: YoutubePlayerController(
                                flags: YoutubePlayerFlags(forceHD: true,hideThumbnail: true,),
                                  initialVideoId: post[index]['video']),
                              showVideoProgressIndicator: true,
                              progressIndicatorColor: Colors.amber,
                              progressColors: const ProgressBarColors(
                                playedColor: Colors.amber,
                                handleColor: Colors.amberAccent,
                              ),
                              // onReady: () {
                              //   _controller.addListener(listener);
                              // },
                            ),
                            // detailPage(
                            //   date: '',
                            //   desc: '',
                            //   image: post[index]['image'],
                            //   titre: post[index]['titre'],
                            // ),
                          ));
                    },
                    child: UI_News(
                      titre: post[index]['titre'],
                      date: '',
                      desc: '',
                      image: post[index]['image'],
                    ),
                  )),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 280),
          child: Text("A la une",
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ui_story(),
                ui_story(),
                ui_story(),
                ui_story(),
                ui_story(),
                ui_story(),
                ui_story(),
                ui_story(),
                ui_story(),
                ui_story(),
              ],
            ),
          ),
        ),
        UI_News(
          titre:
              'Meta lance une version simplifiée d’Instagram pour les régions à faible connectivité',
          desc:
              'Meta a annoncé le lancement d’Instagram Lite, une version allégée de l’application de partage de photos, destinée aux utilisateurs des régions où la connexion Internet est limitée. Cette version offre les fonctionnalités de base, tout en réduisant la consommation de données.',
          date: 'le 05/02/2024',
          image: 'https://media1.ledevoir.com/image/820018?ts=1726581646',
        ),
        UI_News(
          titre: 'Apple dévoile son nouveau casque AR, le Vision Pro',
          desc:
              'Apple a présenté son très attendu casque de réalité augmentée, le Vision Pro, qui promet de révolutionner l’expérience immersive avec des fonctionnalités avancées de suivi des yeux et de commande gestuelle.',
          date: 'le 15/06/2024',
          image:
              'https://www.usine-digitale.fr/mediatheque/2/1/9/001456912_896x598_c.jpg',
        ),
        UI_News(
          titre:
              'Amazon utilise l’IA pour optimiser la gestion de ses entrepôts',
          desc:
              'Amazon a introduit un nouveau système basé sur l’intelligence artificielle pour améliorer l’efficacité de ses centres de distribution. Ce système prédit les besoins d’inventaire et optimise le placement des produits.',
          date: 'le 22/08/2024',
          image:
              'https://classe-export.com/wp-content/uploads/2023/05/90-e1684918394278.jpeg',
        ),
        UI_News(
          titre: 'SpaceX réussit un nouvel atterrissage de sa fusée Starship',
          desc:
              'SpaceX a effectué avec succès le test de lancement et d’atterrissage de son vaisseau Starship, marquant une étape clé dans le développement de sa fusée réutilisable pour les missions lunaires et martiennes.',
          date: 'le 30/09/2024',
          image:
              'https://www.numerama.com/wp-content/uploads/2022/08/super-heavy-booster-7.jpg',
        ),
        UI_News(
          titre:
              'TikTok teste une nouvelle fonctionnalité de commerce en direct',
          desc:
              'TikTok expérimente une fonctionnalité de live shopping, permettant aux créateurs de vendre des produits directement pendant leurs diffusions en direct. Cette initiative vise à renforcer son modèle de commerce social.',
          date: 'le 12/10/2024',
          image:
              'https://cdn1.larevuegeek.com/files/images/articles/thumbnail/aa1886a6-7778-48ed-9125-baf56305997e/65bdffa99f6227.09870082-tiktok.jpg',
        ),
      ],
    );
  }
}
