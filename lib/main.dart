import 'package:flutter/material.dart';
import 'package:maldicao_tirinto/MathFunctions.dart';
import 'package:maldicao_tirinto/Trechos.dart';
import 'CharacterInfo.dart';
import 'Trechos.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,

  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var mainText = "Inicio";
  var caminho1 = "";
  var caminho2 = "";
  var caminho3 = "";
  var caminho4 = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.brown
        ),
        title: Text("Maldição de Tirinto",
          textAlign: TextAlign.end,),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                  Icons.accessibility),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => FunkyOverlay(),
                );
              }
          ),
          IconButton(
              icon: Icon(
                  Icons.assignment_late),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => FunkyOverlay(),
                );
              }
          ),
          IconButton(
              icon: Icon(
                  Icons.build),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => FunkyOverlay(),
                );
              }
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            // TEXTO TELA PRINCIPAL
            Text(
              mainText,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            //======================
            ListTile(
              title: Text("$caminho1"),
              onTap: () {

                setState(() {
                });
              },
            ),
            ListTile(
              title: Text("$caminho2"),
              onTap: () {
                setState(() {
                });
              },
            ),
            ListTile(
              title: Text("$caminho3"),
              onTap: () {
                setState(() {
                });
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          currentIndex: 0,
          onTap: (indice){
            setState(() {
            });
          },
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              //backgroundColor: Colors.orange,
                title: Text(HP.toString()),
                icon: Icon(Icons.favorite)
            ),
            BottomNavigationBarItem(
              //backgroundColor: Colors.red,
                title: Text("+$power"),
                icon: Icon(Icons.whatshot)
            ),
            BottomNavigationBarItem(
              //backgroundColor: Colors.blue,
                title: Text("Status"),
                icon: Icon(Icons.mood_bad)
            ),
          ]
      ),
    );
  }
}

//===========================ANIMATION CONTROLLER===============================

class FunkyOverlay extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FunkyOverlayState();
}

class FunkyOverlayState extends State<FunkyOverlay>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.linear);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }
//=====================POPUP WINDOW=============================================
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Container(
                child: Column(
                    children: <Widget>[
                      Text("Prepara-se para lutar!!!"),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Image.asset('img/dice$rightDiceHero.png'),
                          ),
                          Expanded(
                            child: Image.asset('img/dice$leftDiceHero.png'),
                          ),
                        ],
                      ),
                      Text("Resultado do HEROI"),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Image.asset('img/dice$rightDiceMonster.png'),
                          ),
                          Expanded(
                            child: Image.asset('img/dice$leftDiceMonster.png'),
                          ),
                        ],
                      ),
                      Text("Resultado do MONSTER"),
                      Text("ALgum TExto"),
                      Text("Outro Texto"),
                      RaisedButton(
                        child: Text("LUTAR"),
                          onPressed: (){
                            setState(() {
                              diceRandom();
                            });
                          }),
                      RaisedButton(
                        child: Text("SAIR"),
                          onPressed: (){
                            setState(() {
                              Navigator.pop(context);
                            });
                          })
                    ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
