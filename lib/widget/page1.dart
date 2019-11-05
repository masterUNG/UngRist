import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  // Explicit

  // Method
  @override
  void initState() { 
    super.initState();
    readAllData();
    // Future<String> test = testThread();
  }

  Future<String> testThread()async{
    return 'Answer';
  }

  Future<void> readAllData()async{
    String urlAPI = 'https://jsonplaceholder.typicode.com/posts';
    Response response = await get(urlAPI);
    var result = json.decode(response.body);
    print('result = $result');
  }


  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Page 1'),);
  }
}