import 'package:appli_test/screens/infoAlbumTemplate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Album extends StatelessWidget {
    Album({Key? key, this.nomAlbum, this.description, this.nomGroupe, this.image}) 
      : super(key: key); 
   final String? nomAlbum; 
   final String? description; 
   final String? nomGroupe; 
   final String? image; 

   Widget build(BuildContext context) {
      return Container(
         padding: EdgeInsets.all(2), height: 150,  child: GestureDetector(
          onTap: () {
            SystemChrome.setEnabledSystemUIMode(
              SystemUiMode.immersive,
            );
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AlbumDetailPage(album: Album(nomAlbum: nomAlbum,description:description ,image: image,nomGroupe: nomGroupe)),
              ),
            );
          },

          
         child :     
         Card( 
            child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly, children:    <Widget>[
                  Image.asset("images/${image!}"), Expanded(
                     child: Container(
                        padding: EdgeInsets.all(5), child: Column(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                              children: <Widget>[ 
                              
                              Text(this.nomAlbum!, style: TextStyle(fontWeight: 
                                 FontWeight.bold)),Flexible(child:  Text(this.description!)), 
                              Text("Valeur: " + this.nomGroupe.toString()), 
                           ], 
                        )
                     )
                  )
               ]
            )
         )
         )
      );
   }
}
