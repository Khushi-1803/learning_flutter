import 'package:api_intigration/models/meme_model.dart';
import 'package:flutter/material.dart';
import 'package:api_intigration/services/meme_services.dart';
import 'package:api_intigration/widgets/meme_card.dart';

class MemeHomePage extends StatefulWidget {
  const MemeHomePage({super.key});

  @override
  State<MemeHomePage> createState() => _MemeHomePageState();
}

class _MemeHomePageState extends State<MemeHomePage> {
  List<MemeModel> memes = [];
  bool isLoading = true;
  Color backgroundColor = Colors.red;

  @override
  void initState() {
    super.initState();
    fetchMemes();
  }

  Future<void> fetchMemes() async {
    final fetchedMemes = await MemeService.fetchMemes(context);

    if (!mounted) return;

    if (fetchedMemes != null) {
      setState(() {
        memes = fetchedMemes;
        isLoading = false;
      });
    } else {
      setState(() {
        isLoading = false;
      });
    }
  }

  void updateBackgroundColor(Color color) {
    setState(() {
      backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meme Home Page'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.red,
              Colors.orange,
              Colors.yellow,
            ],
          ),
        ),
        child: isLoading
            ? const Center(child: CircularProgressIndicator())
            : memes.isEmpty
                ? const Center(child: Text('No memes found'))
                : ListView.builder(
                    itemCount: memes.length,
                    itemBuilder: (context, index) {
                      final meme = memes[index];

                      return MemeCard(
                        title: meme.title,
                        imageUrl: meme.url,
                        postLink: meme.postLink,
                        ups: meme.ups,
                        onColorExtracted: updateBackgroundColor,
                      );
                    },
                  ),
      ),
    );
  }
}