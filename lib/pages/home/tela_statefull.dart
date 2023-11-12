import 'package:flutter/material.dart';

class TelaStatefull extends StatefulWidget {
  const TelaStatefull({super.key});

  @override
  State<TelaStatefull> createState() => _TelaStatefullState();
}

class _TelaStatefullState extends State<TelaStatefull> {
  String? nome;
  String? profissao;
  int? idade;
  String? imagemReal;
  Color? color;
  Color? color2;
  String image =
      'https://img.myloview.com.br/adesivos/interrogacao-vermelho-3d-interrogacao-sinal-pessoa-perguntar-icone-caractere-pontuacao-dicas-grafico-homem-pessoas-negocio-700-147094646.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela com StateFull'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          spacing: 1,
          children: [
            Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Nome: ${nome ?? 'Nao informado'}',
                        style: const TextStyle(
                            fontFamily: 'Agbalumo',
                            fontStyle: FontStyle.italic)),
                    Text('Profissao: ${profissao ?? 'Estudante'}'),
                    Text('Idade: ${idade ?? 0}'),
                  ]),
            ),
            const SizedBox(
              height: 30,
              width: 60,
            ),
            Center(
              child: Container(
                alignment: Alignment.bottomLeft,
                height: 200,
                width: 200,
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imagemReal ?? image),
                  ),
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: color2 ?? Colors.black,
                      offset: Offset(10, 10),
                    ),
                    BoxShadow(
                      blurRadius: 5,
                      color: color ?? Colors.redAccent,
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
                  setState(
                    () {
                      nome = 'Ricardo';
                      profissao = 'Desenvolvedor Mobile';
                      idade = 30;
                      color = Colors.blue[300];
                      color2 = Colors.brown[500];
                      imagemReal =
                          'https://media.licdn.com/dms/image/D4D03AQGsm3m1AgnBLA/profile-displayphoto-shrink_800_800/0/1698949750126?e=1704931200&v=beta&t=SQd1El9SoFRzQWkopRU49y8SKI1UOy2MQShcyVociFo';
                    },
                  );
                },
                child: const Text('Confirmar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
