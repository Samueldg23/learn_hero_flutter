import 'package:flutter/material.dart';

class MissoesPage extends StatelessWidget {
  const MissoesPage({super.key});

  Widget _missao(String titulo, String progresso, String botao) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(titulo),
        subtitle: Text('Progresso: $progresso'),
        trailing: ElevatedButton(
          onPressed: () {},
          child: Text(botao),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Missões")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text("Missão do Dia", style: TextStyle(fontSize: 18)),
            _missao("Complete 3 quizzes de História", "1/3", "Continuar"),
            _missao("Complete 3 quizzes de Português", "1/3", "Continuar"),
            const SizedBox(height: 24),
            const Text("Recompensas Rápidas", style: TextStyle(fontSize: 18)),
            _missao("Ganhe 10xp assistindo 1 vídeo", "0/1", "Assistir"),
            _missao("Responda 1 desafio relâmpago", "0/1", "Responder"),
          ],
        ),
      ),
    );
  }
}
