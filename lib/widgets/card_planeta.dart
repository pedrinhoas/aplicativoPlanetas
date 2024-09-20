import 'package:flutter/material.dart';

class CardPlaneta extends StatelessWidget {

  const CardPlaneta({
    super.key,
    required this.nome,
    required this.descricao,
    required this.imagens
  });

 final String nome;
 final String descricao;
 final String imagens;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150, // altura
      width: double.infinity, // largura (vai ocupar to_do espaço disponível)
      child: GestureDetector(
        onTap: () {
          // Quando eu clicar
          final snackBar = SnackBar(content: Text(nome));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Card(
          elevation: 2, //elevação
          child: SizedBox(
            // o card ficará com o tamanho definido no sized box
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                    child: Image.asset("assets/images/$imagens")),
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          nome,
                          style: const TextStyle(fontSize: 15),
                        ),
                        Text(descricao)
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}



