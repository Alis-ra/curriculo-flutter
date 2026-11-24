import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu currículo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Meu currículo'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. Identificação (Nome, Curso e E-mail com ícone)
                Text(
                  'Dara Aguiar de Sousa',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Análise e Desenvolvimento de Sistemas - IFRO',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.email_outlined, size: 20),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'dara.aguiar@estudante.ifro.edu.br',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),

                Divider(height: 32, thickness: 1, color: Colors.black12),

                // 2. Seções do currículo (usando o widget reutilizável Secao)
                Secao(
                  titulo: 'Formação',
                  texto:
                      'Tecnologia em Análise e Desenvolvimento de Sistemas (ADS) — IFRO Campus Ji-Paraná\n'
                      'Certificações Financeiras ANBIMA CPA-10 e CPA-20',
                ),

                Divider(height: 32, thickness: 1, color: Colors.black12),

                Secao(
                  titulo: 'Experiência Profissional',
                  texto:
                      'Analista de Suporte Técnico NOC — Uni Internet (Uni Telecom Ltda)\n'
                      'Atuação em redes GPON/EPON, roteamento MikroTik, BGP e diagnósticos de conectividade.',
                ),

                Divider(height: 32, thickness: 1, color: Colors.black12),

                Secao(
                  titulo: 'Habilidades',
                  texto:
                      '• Dart e Flutter\n'
                      '• Git e GitHub\n'
                      '• Redes de Computadores (OLTs, MikroTik, IPv4/IPv6)\n'
                      '• Python, R, PowerShell e Bancos de Dados SQL',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Widget personalizado para padronizar as seções
class Secao extends StatelessWidget {
  const Secao({
    super.key,
    required this.titulo,
    required this.texto,
  });

  final String titulo;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titulo,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          texto,
          style: const TextStyle(
            fontSize: 16,
            height: 1.4,
          ),
        ),
      ],
    );
  }
}