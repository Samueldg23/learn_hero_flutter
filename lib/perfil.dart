import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  Widget _infoTexto(String label, String valor) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Text("$label: ",
              style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(valor),
        ],
      ),
    );
  }

  Widget _conquista(String titulo) {
    return ListTile(
      leading: const Icon(Icons.check_circle_outline),
      title: Text(titulo),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Perfil")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/emoji-perfil.png'),
                  ),
                  const SizedBox(height: 12),
                  const Text("Samueldg23",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const Text("samuel.gomes@email.com.br"),
                ],
              ),
            ),
            const Divider(height: 32),
            _infoTexto("Nível", "12"),
            _infoTexto("XP", "1350/2000"),
            _infoTexto("Moedas", "155"),
            const SizedBox(height: 16),
            const Text("Conquistas",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            _conquista("Foco Total – 7 dias de login"),
            _conquista("Maratona de Estudo – 10 quizzes feitos"),
            _conquista("Estiloso – 5 itens equipados no avatar"),
            _conquista("45 Missões completas"),
            _conquista("12 Desafios Concluídos"),
            const SizedBox(height: 24),
            Center(
              child: Text("Última missão: 20/04/2025",
                  style: const TextStyle(fontStyle: FontStyle.italic)),
            ),
          ],
        ),
      ),
    );
  }
}
