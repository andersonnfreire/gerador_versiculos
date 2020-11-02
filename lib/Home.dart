import 'package:flutter/material.dart';
import 'dart:math';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var versiculoGerado = "Clique abaixo para gerar uma frase!";

  void gerarVersiculo(){

  var versiculos = [
    "Eu disse essas coisas para que em mim vocês tenham paz.Neste mundo vocês "
        "terão aflições; contudo, tenham ânimo! Eu venci o mundo."
        "João 16:33",
    "Porque sou eu que conheço os planos que tenho para vocês', diz o Senhor, "
        "'planos de fazê-los prosperar e não de causar dano, planos de dar a "
        "vocês esperança e um futuro. Jeremias 29:11",
    "Tudo posso naquele que me fortalece. Filipenses 4:13",
    "Honra teu pai e tua mãe, a fim de que tenhas vida longa na terra que o Senhor,o teu Deus, te dá. Êxodo 20:12",
    "Então disse Jesus: 'Deixem vir a mim as crianças e não as impeçam; pois o Reino dos céus pertence aos que são semelhantes a elas'."
  ];

  int num  = Random().nextInt(versiculos.length);

  setState(() {
    versiculoGerado = versiculos[num];
  });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Versículos Bíblicos"),
        backgroundColor: Colors.deepOrange,
      ),
      backgroundColor: Colors.white,
      body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                    Image.asset(
                          "images/biblia.jpg",
                          fit: BoxFit.contain,
                    ),
                    Text(
                          versiculoGerado,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                          ),
                        ),
                    RaisedButton(
                          child: Text(
                            "Novo Versículo",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          color: Colors.deepOrangeAccent,
                          onPressed: gerarVersiculo
                    ),
                ],
            ),
        ),
      )
    );
  }
}
