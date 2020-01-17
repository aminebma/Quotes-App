import 'package:flutter/material.dart';

import './quote.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text:'Be yourself', author:'Amine BENBAKHTA'),
    Quote(author:'Mouloud Koudil',text:'Always aim the moon, even if you miss, you\'ll reach the stars'),
    Quote(author: 'Albert Einstein',text:'Knowledge is Experience')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
          children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList()),
    );
  }
}