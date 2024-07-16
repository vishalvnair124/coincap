import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.data});

  final Map data;

  @override
  Widget build(BuildContext context) {
    List _currencies = data.keys.toList();
    List _exchangeRates = data.values.toList();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: ListView.builder(
            itemCount: _currencies.length,
            itemBuilder: (BuildContext _context, int _index) {
              String _currency = _currencies[_index].toString().toUpperCase();
              String _exchangeRate =
                  _exchangeRates[_index].toString().toUpperCase();
              return ListTile(
                title: Text(
                  "$_currency : $_exchangeRate",
                  style: const TextStyle(color: Colors.white),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
