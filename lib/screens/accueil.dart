import 'package:flutter/material.dart';


class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  State<Accueil> createState() => _Accueil();
}

class _Accueil extends State<Accueil> {
  
  int _counter = 0;


    void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      
      _counter--;
    });
  }

  void _setzero() {
    setState(() {
      
      _counter=0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
  children: <Widget>[
    Image.network("https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQaeYVkrv1iW_wLRCEEzTb7qc12kiK0ZFfPXfwCdsllhcmEocgA"),
    Image.asset('images/dl.gif', width: 400,),
    Center(
      child: const Text(
        'Nombre:',
      ),
    ),
    Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: _decrementCounter,
                  child: Text('-'),
                ),
                TextButton(
                  onPressed: _setzero,
                  child: Text('Reset'),
                ),
                TextButton(
                  onPressed: _incrementCounter,
                  child: Text('+'),
                ),
              ],
            ),
          ],
        ),
      ),
  ],
),
      );
        
  }
}