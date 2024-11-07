import 'package:desafio_dreamlabs/entites/post.dart';
import 'package:flutter/material.dart';

class PostDetalhePage extends StatelessWidget {
  final Post post;

  const PostDetalhePage({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detalhe do Post",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              post.title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),
            Text(
              post.body,
              style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
            )
          ],
        ),
      ),
    );
  }
}
