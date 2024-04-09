import 'package:flutter/material.dart';
import 'package:appli_test/screens/albumTemplate.dart';

class ParamBody extends StatefulWidget {
  const ParamBody({Key? key}) : super(key: key);

  @override
  State<ParamBody> createState() => _ParamBody();
}

class _ParamBody extends State<ParamBody> {
  

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
    return Container(
        color: Colors.blue,
        alignment: Alignment.center,
        child: ListView(
          children: [
          for (Map<String, dynamic> albu in listeAlbum)
            Album(
              nomAlbum: albu["nomAlbum"],
              nomGroupe: albu["nomGroupe"],
              description: albu["description"],
              image: albu["image"]
            ),
        ],

      )
    );
        
  }
}
