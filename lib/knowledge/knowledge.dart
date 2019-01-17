import 'package:flutter/material.dart';
import 'package:hello_world/home/randomWord.dart';

class KnowledgePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _KnowledgePageState();
}

class _KnowledgePageState extends State<KnowledgePage> {

  @override
  Widget build(BuildContext context) {
    return new RandomWords();
  }
}