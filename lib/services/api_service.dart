import 'dart:convert';

import 'package:desafio_dreamlabs/entites/post.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String apiUrl = "https://jsonplaceholder.typicode.com/posts";

  /*
    Aqui criamos uma classe que vai carregar o conteudo da API(posts)
    
    -Caso o retorno da API de o codigo 200 ele vai carregar o conteudo
    -Caso nao carregue vai aprensentar um erro
  */
  Future<List<Post>> fetchPosts() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => Post.fromJson(json)).toList();
    } else {
      throw Exception("Erro ao carregar os posts");
    }
  }
}
