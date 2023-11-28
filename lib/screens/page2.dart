import 'package:flutter/material.dart';
import 'dart:math';

class PageSuivante extends StatefulWidget {
  const PageSuivante({super.key});

  @override
  State<PageSuivante> createState() => _PageSuivante();
}

class _PageSuivante extends State<PageSuivante> {
int random1 = 0;
int random2 = 0;
int reponse =-1;
String message = "";
int _counter = 100;

void _showToast(BuildContext context, String _message) {
	    final scaffold = ScaffoldMessenger.of(context);
	    scaffold.showSnackBar(
	      SnackBar(
	        content: Text(_message),
	        
	      ),
	    );
	  }


  @override 
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green,
        alignment: Alignment.center,
        child: ListView(
        children: <Widget>[
          Center(child:  Text(
            '$random1+$random2',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
          Center(
            child: GestureDetector(
              child: Text('Génerer une opération aléatoire'),
            
              onTap: (){
                setState(() {
                var _randomNumber = Random().nextInt(_counter);
                random1 = _randomNumber;
                _randomNumber = Random().nextInt(_counter);
                random2 = _randomNumber;
                });
              },
            ),
          ),
          Center(
            child:TextField(
                 keyboardType: TextInputType.number,
                 maxLength: 25,
                 style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
                  decoration: const InputDecoration(
                  labelText: 'Entrer la solution',
                  hintText: 'Entrer un nombre',
                  border: OutlineInputBorder()),
          onChanged: (value){
            setState(() {
              if (value!= "")
              reponse = int.parse(value);

            });
          },
)
          ,),
          Center(
            child: ElevatedButton(
              child: Text('Valider'),
            
              onPressed: (){
                if (reponse== random1+random2){
                  
                    message="Bonne réponse !";
                  
                }
                else{
                  
                    message="Mauvaise réponse !";
                
                
                }
                _showToast(context, message);
              }
          ,)
        )],
        
        
      ),
      );
  }
} 
  
