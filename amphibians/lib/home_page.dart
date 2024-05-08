import 'dart:convert';

import 'package:amphibians/models/post.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: FutureBuilder(
        future: _getPosts(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("Ha ocurrido un error!"),
            );
          } else if (snapshot.hasData) {
            List<Post> postsList = snapshot.data ?? [];
            return ListView.builder(
              itemCount: postsList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text("${postsList[index].title}"),
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Future<List<Post>> _getPosts() async {
    String postsEndpoint = "https://jsonplaceholder.typicode.com/posts";
    try {
      var response = await get(Uri.parse(postsEndpoint));
      if (response.statusCode != 200) return [];
      List<Post> posts = [];
      posts = (jsonDecode(response.body) as List)
          .map((item) => Post.fromMap(item))
          .toList();
      return posts;
      // as list ya que es una lista [] en el endpoint
    } catch (e) {
      print("Error requestL ${e.toString()}");
      return [];
    }
  }
}
