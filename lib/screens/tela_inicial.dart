import 'package:planetas_app/Models/planeta.dart';
import 'package:planetas_app/widgets/card_planeta.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  var planetas = [
    Planeta("Mercúrio", "Menor planeta", "mercurio.jpg"),
    Planeta("Vênus", "Planeta mais quente", "venus.jpg"),
    Planeta("Terra", "Tem vida e água", "terra.jpg"),
    Planeta("Marte", "Conhecido como planeta vermelho", "marte.jpg"),
    Planeta("Júpiter", "Maior planeta do sistema solar", "jupiter.jpg"),
    Planeta("Saturno", "Tem 62 luas", "saturno.jpg"),
    Planeta("Urano", "É o Terceiro maior", "urano.jpg"),
    Planeta("Netuno", "É o mais distante do sol", "netuno.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Solar System App"),
      ),
      body: ListView.builder(
          itemCount: planetas.length,
          itemBuilder: (BuildContext context, int index) {
            return CardPlaneta(
                nome: planetas[index].nome,
                descricao: planetas[index].descricao,
                imagens: planetas[index].imagens);
          }),
    );
  }
}
