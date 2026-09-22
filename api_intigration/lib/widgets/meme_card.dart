import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MemeCard extends StatefulWidget {
  final String title;
  final String imageUrl;
  final String postLink;
  final int ups;
  final Function(Color) onColorExtracted;

  const MemeCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.postLink,
    required this.ups,
    required this.onColorExtracted,
  });

  @override
  State<MemeCard> createState() => _MemeCardState();
}

class _MemeCardState extends State<MemeCard> {
  Color backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 4.0,
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.red,
              Colors.orange,
              Colors.yellow,
            ],
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedNetworkImage(
                imageUrl: widget.imageUrl,
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) =>
                    const Icon(Icons.error),
                width: double.infinity,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 12),
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}