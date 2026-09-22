import 'dart:convert';

import 'package:api_intigration/models/meme_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MemeService {
  static Future<List<MemeModel>?> fetchMemes(
      BuildContext context) async {
    final url = Uri.parse('https://meme-api.com/gimme/50');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        final memes = (data['memes'] as List)
            .map((meme) => MemeModel.fromJson(meme))
            .toList();

        return memes;
      } else {
        throw Exception(
          'Failed to load memes: ${response.statusCode}',
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: $e'),
          ),
        );
      }

      return null;
    }
  }
}