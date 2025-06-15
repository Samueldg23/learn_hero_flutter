import 'package:flutter/material.dart';

class LojaPage extends StatelessWidget {
  const LojaPage({super.key});

  Widget _itemLoja(String nome, String imagem, String preco) {
    return Card(
      child: ListTile(
        leading: Image.asset(imagem, height: 40),
        title: Text(nome),
        subtitle: Text('Preço: $preco moedas'),
        trailing: ElevatedButton(onPressed: () {}, child: const Text("Comprar")),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Loja do Herói")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text("Saldo: 245 moedas | XP: 1300", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 12),
            _itemLoja("Chapéu Vortex Preto", 'assets/witch-hat_2691163.png', "50"),
            _itemLoja("Laço Vermelho", 'assets/pencil_9268137.png', "35"),
            _itemLoja("Fundo China", 'assets/torii-gate_619044.png', "60"),
            _itemLoja("Chapéu Graduação", 'assets/graduate_2141459.png', "55"),
            _itemLoja("Fundo de Praia", 'assets/beach_3719908.png', "55"),
          ],
        ),
      ),
    );
  }
}
