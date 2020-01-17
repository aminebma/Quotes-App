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
    Quote(text: 'Be yourself', author: 'Amine BENBAKHTA'),
    Quote(
        author: 'Mouloud Koudil',
        text: 'Always aim the moon, even if you miss, you\'ll reach the stars'),
    Quote(author: 'Albert Einstein', text: 'Knowledge is Experience')
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Column(
        children: <Widget>[
          Text(
            quote.text,
            style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
          ),
          SizedBox(height: 6.0),
          Text(
            quote.author,
            style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: quotes.map((quote) => quoteTemplate(quote)).toList()),
        ));
  }
}
