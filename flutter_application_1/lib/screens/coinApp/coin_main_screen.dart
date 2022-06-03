import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utiles/constants.dart';
import 'package:http/http.dart' as http;
import 'coin_card_widget.dart';
import 'coin_model.dart';

class CoinAppDemo extends StatefulWidget {
  const CoinAppDemo({Key? key}) : super(key: key);

  @override
  State<CoinAppDemo> createState() => _CoinAppDemoState();
}

class _CoinAppDemoState extends State<CoinAppDemo> {
  List<Coin> coinList = [];
  Future<List> getCoinDetails() async {
    final response = await http.get(
      Uri.parse(
          'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc'),
    );
    if (response.statusCode == 200) {
      List<dynamic> values = [];
      values = json.decode(response.body);
      if (values.isNotEmpty) {
        for (int i = 0; i < values.length; i++) {
          if (values[i] != null) {
            Map<String, dynamic> map = values[i];
            coinList.add(Coin.fromJsom(map));
          }
        }
        setState(() {
          coinList;
        });
      }
      return coinList;
    } else {
      throw Exception('Please Check Internet Connection');
    }
  }

  @override
  void initState() {
    getCoinDetails();
    Timer.periodic(const Duration(seconds: 10), (timer) => getCoinDetails());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kIconBackgroundColor,
        title: const Text('Crypto Coins Listing', style: klabelLargeTextStyle),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: coinList.length,
        itemBuilder: ((context, index) {
          return CoinCard(
            name: coinList[index].name,
            symbol: coinList[index].symbol,
            imageUrl: coinList[index].imageUrl,
            price: coinList[index].price.toDouble(),
            change: coinList[index].change.toDouble(),
            changePercentage: coinList[index].changePercentage.toDouble(),
          );
        }),
      ),
    );
  }
}
