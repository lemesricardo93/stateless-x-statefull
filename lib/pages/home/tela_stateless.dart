import 'package:flutter/material.dart';

class TelaStateless extends StatelessWidget {
  const TelaStateless({super.key});

  @override
  Widget build(BuildContext context) {
    var nome = 'Não Informado';
    var profissao = 'Não tem';
    int idade = 0;
    String image = 'https://docs.flutter.dev/assets/images/dash/Dashatars.png';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela com Stateless'),
      ),
      body: Wrap(
        spacing: 2,
        children: [
          Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Nome: ${nome}',
              ),
              Text('Profissao: ${profissao}'),
              Text('Idade: ${idade}'),
            ]),
          ),
          const SizedBox(
            height: 30,
            width: 60,
          ),
          Center(
            child: Container(
              alignment: Alignment.bottomLeft,
              // child: Image.network(
              //     fit: BoxFit.cover,
              //     alignment: Alignment.center,
              //     'https://img.myloview.com.br/adesivos/interrogacao-vermelho-3d-interrogacao-sinal-pessoa-perguntar-icone-caractere-pontuacao-dicas-grafico-homem-pessoas-negocio-700-147094646.jpg'),
              height: 200,
              width: 200,
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(image ?? image), fit: BoxFit.contain),
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(50),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 5,
                    color: Colors.black,
                    offset: Offset(10, 10),
                  ),
                  BoxShadow(
                    blurRadius: 5,
                    color: Colors.green,
                    offset: Offset(-5, -10),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                nome = 'Ricardo';
                profissao = 'Analista';
                idade = 30;
              },
              child: const Text('Confirmar'),
            ),
          ),
        ],
      ),
    );
  }
}
