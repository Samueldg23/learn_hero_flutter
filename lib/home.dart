import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget _progresso(String titulo, int porcentagem) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titulo, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        LinearProgressIndicator(value: porcentagem / 100),
        const SizedBox(height: 12),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LearnHero'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundImage: AssetImage('assets/emoji-perfil.png'),
                ),
                const SizedBox(width: 16),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Bem Vindo de Volta, Samuel!',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Samueldg23 – 7 meses no LearnHero'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text('Trilha do Aprendizado',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            _progresso("MATEMÁTICA", 45),
            _progresso("PORTUGUÊS", 80),
            _progresso("CIÊNCIA", 65),
            _progresso("GEOGRAFIA", 87),
            const SizedBox(height: 24),
            const Text("Ranking dos Heróis", style: TextStyle(fontSize: 18)),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: List.generate(6, (index) {
                return CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/avataaars (${index + 1}).png'),
                );
              }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.flag), label: 'Missões'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Loja'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }
}
