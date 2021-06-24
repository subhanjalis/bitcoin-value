
import 'dart:convert';
import 'networking.dart';
import 'package:http/http.dart' as http;
const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'F58446AE-17FE-40C8-ADD0-5ABF025CEC50';

class CoinData {
  String getCurrencyName(int selectedCurrency){
    String curr= currenciesList[selectedCurrency];
    return curr;
  }
  Future<dynamic> getCoinData(int selectedCurrency) async {
    String curr= currenciesList[selectedCurrency];
    print("$curr ++");
    var url = '$coinAPIURL/BTC/$curr?apikey=$apiKey';
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      var lastPrice = decodedData['rate'];
      print(lastPrice);
      return lastPrice;
    } else {
      print(response.statusCode);
      throw 'Problem with the get request';
    }
    // NetworkHelper networkHelper = NetworkHelper('$coinAPIURL/BTC/USD?apikey=$apiKey');
    // var weatherData = await networkHelper.getData();
    // return weatherData;
  }
  Future<dynamic> getCoinData2(int selectedCurrency) async {
    String curr= currenciesList[selectedCurrency];
    print("$curr ++");
    var url = '$coinAPIURL/ETH/$curr?apikey=$apiKey';
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      var lastPrice = decodedData['rate'];
      print(lastPrice);
      return lastPrice;
    } else {
      print(response.statusCode);
      throw 'Problem with the get request';
    }
    // NetworkHelper networkHelper = NetworkHelper('$coinAPIURL/BTC/USD?apikey=$apiKey');
    // var weatherData = await networkHelper.getData();
    // return weatherData;
  }
  Future<dynamic> getCoinData3(int selectedCurrency) async {
    String curr= currenciesList[selectedCurrency];
    print("$curr ++");
    var url = '$coinAPIURL/LTC/$curr?apikey=$apiKey';
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      var lastPrice = decodedData['rate'];
      print(lastPrice);
      return lastPrice;
    } else {
      print(response.statusCode);
      throw 'Problem with the get request';
    }
    // NetworkHelper networkHelper = NetworkHelper('$coinAPIURL/BTC/USD?apikey=$apiKey');
    // var weatherData = await networkHelper.getData();
    // return weatherData;
  }

}
