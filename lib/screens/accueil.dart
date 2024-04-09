import 'package:appli_test/screens/infoAlbumTemplate.dart';
import 'package:flutter/material.dart';
import 'package:appli_test/screens/albumTemplate.dart';
import 'package:flutter/services.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  State<Accueil> createState() => _Accueil();
}

class _Accueil extends State<Accueil> {
  

   List<Map<String, dynamic>> listeAlbum =[
               {
    'nomAlbum': "Music To Be Murdered By",
    'description': "Godzilla is a song by Eminem featuring Juice WRLD from the album Music To Be Murdered By. It showcases Eminem's rapid-fire delivery and clever wordplay.",
    'nomGroupe': "Eminem",
    'image': "godzilla.PNG"
               },
  {
    'nomAlbum': "Hotel California",
    'description': "Hotel California is a classic rock song by the Eagles from the album of the same name. The song is known for its iconic guitar solo and mysterious lyrics.",
    'nomGroupe': "Eagles",
    'image': "hotel.PNG"
  },
  {
    'nomAlbum': "ALL OUT",
    'description': "More is a song by KD/A, a virtual K-pop girl group created for the game League of Legends. It features a mix of pop and electronic elements.",
    'nomGroupe': "KD/A",
    'image': "more.PNG"
  },
  {
    'nomAlbum': "The Razors Edge",
    'description': "Thunderstruck is a hard rock song by AC/DC from the album The Razors Edge. Known for its powerful guitar riff, the song has become an anthem for the band.",
    'nomGroupe': "AC/DC",
    'image': "thunderstruck.PNG"
  },
  {
    'nomAlbum': "No Need to Argue",
    'description': "Zombie is a song by the Cranberries from the album No Need to Argue. The powerful and emotional track addresses political violence and conflict.",
    'nomGroupe': "The Cranberries",
    'image': "zombie.PNG"
  },
];

@override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (Map<String, dynamic> album in listeAlbum)
          Container(
            height: 50, // Par exemple, définissez une hauteur fixe ou utilisez d'autres valeurs pour les contraintes de hauteur
            child: GestureDetector(
              onTap: () {
                // Masquer les éléments de l'interface utilisateur lors du passage à la page de détail
                SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

                // Naviguer vers la page de détail de l'album avec les informations de l'album sélectionné
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AlbumDetailPage(
                      album: Album(
                        nomAlbum: album["nomAlbum"],
                        description: album["description"],
                        nomGroupe: album["nomGroupe"],
                        image: album["img"],
                      ),
                    ),
                  ),
                );
              },
              child: ListTile(
                title: Text(album["nomAlbum"]),
                // Vous pouvez ajouter d'autres widgets ici pour afficher plus d'informations sur chaque album
              ),
            ),
          ),
      ],
    );
  }
}
