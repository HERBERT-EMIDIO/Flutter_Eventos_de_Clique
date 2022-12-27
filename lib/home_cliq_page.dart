import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeCliquePage extends StatefulWidget {
  const HomeCliquePage({super.key});

  @override
  State<HomeCliquePage> createState() => _HomeCliquePageState();
}

class _HomeCliquePageState extends State<HomeCliquePage> {
  List _itens = [];
  // ignore: unused_element
  void _carregarItens() {
    _itens = [];
    for (int i = 0; i <= 20; i++) {
      Map<String, dynamic> item = {};
      item['titulo'] =
          'Título :$i. Não se desespere quando a caminhada estiver difícil, é sinal de que você está no caminho certo.';
      item['descricao'] =
          'Descrição :$i. As pessoas costumam dizer que a motivação não dura sempre. Bem, nem o efeito do banho, por isso recomenda-se diariamente.';
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    _carregarItens();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Evento Clique na tela'),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: _itens.length,
          itemBuilder: (context, indice) {
            //Map<String, dynamic> item = _itens[indice];
            //print('item: ${_itens[indice]['titulo']}');
            return ListTile(
              onTap: () {
                print('clique com onTap $indice');
                showDialog(
                  context: context,
                  builder: (contex) {
                    return AlertDialog(
                      title: Text(_itens[indice]['titulo']),
                      titlePadding: EdgeInsets.all(20),
                      titleTextStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.orange,
                      ),
                      content: Text(_itens[indice]['descricao']),
                      backgroundColor: Colors.green[100],
                      contentPadding: EdgeInsets.all(20),
                      actions: [
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(16.0),
                            primary: Colors.green,
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            print('selecionado sim');
                            Navigator.pop(contex);
                          },
                          child: const Text('Sim'),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(16.0),
                            primary: Colors.green,
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            print('selecionado não');
                            Navigator.pop(contex);
                          },
                          child: const Text('Não'),
                        ),
                      ],
                    );
                  },
                );
              },
              /*onLongPress: () {
                print('clique com longpress');
              },*/
              title: Text(_itens[indice]['titulo']),
              subtitle: Text(_itens[indice]['descricao']),
            );
          },
        ),
      ),
    );
  }
}
