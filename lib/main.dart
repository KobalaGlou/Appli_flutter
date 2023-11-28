import 'package:flutter/material.dart';


import 'package:appli_test/screens/accueil.dart';
import 'package:appli_test/screens/page2.dart';
import 'package:appli_test/screens/param.dart';

import 'package:json_theme/json_theme.dart';
import 'package:flutter/services.dart';
import 'dart:convert';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final themeStr = await rootBundle.loadString('assets/ThemeAlbum.json');

  final themeJson = jsonDecode(themeStr);

  final theme = ThemeDecoder.decodeThemeData(themeJson)!;

  runApp(MyApp(theme : theme));
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.theme}) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: theme,
      
      home: const MyHomePage(title: 'Découverte de Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;
  int currentPageIndex = 0; 
  int index = 0;
 
  _getDrawerItemWidget(int pos) {
      switch (pos) {
      case 0:
      return new Accueil();  //Nom de votre StatefulWidget dans votre fichier Acceuil

      case 1:
      return new PageSuivante();

      case 2:
      return new  ParamBody();

      //Autres case à réaliser

      default:
      return new Text("Erreur de page");
      }
      }

  
    @override
    void initState() {
    super.initState();
    }


  
  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
      AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      Expanded(
          child: Scaffold(
            body: _getDrawerItemWidget(currentPageIndex),
          ),
      ),
      
    
      //page 2
      
      //page paramètre

       NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
		        currentPageIndex = index;
          });
        },
	  selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Accueil",
          ),
          NavigationDestination(
            icon: Icon(Icons.follow_the_signs),
            label: "Page Suivante",
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: "Paramètres",
          ),
        ],
      ),

      ],
    

    );
  }
}
