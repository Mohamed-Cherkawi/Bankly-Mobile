import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:bankly/model/transaction_maper.dart';

class TransactionService {
  static final String token = 'eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ0xJRU5UIiwic3ViIjoiU2ltb3giLCJpYXQiOjE2NzgwMjM1MDAsImV4cCI6MTY3ODEwOTkwMH0.rhOzRNdSfu_fmStsAr_ZPE1dD46zyzvTKwfW3iOTnsg';

  static Future<List<Transaction>> fetchTransactions(http.Client client) async {
    final response = await client
        .get(
      Uri.parse('http://localhost:9010/transaction/api/v1/fetching/all'),
      headers: {
        HttpHeaders.authorizationHeader: 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      debugPrint('data is there');
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return parseTransactions(response.body);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      debugPrint('Data Not Found');
      throw Exception('Failed to load transactions');
    }
  }
  // A function that converts a response body into a List<Photo>.
  static List<Transaction> parseTransactions(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<Transaction>((json) => Transaction.fromJson(json)).toList();
  }

}