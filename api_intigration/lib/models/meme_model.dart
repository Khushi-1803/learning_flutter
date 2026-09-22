class MemeModel {
  final String postLink;
  final String subreddit;
  final String title;
  final String url;
  final bool nsfw;
  final bool spoiler;
  final String author;
  final int ups;
  final List<String> preview;

  const MemeModel({
    required this.postLink,
    required this.subreddit,
    required this.title,
    required this.url,
    required this.nsfw,
    required this.spoiler,
    required this.author,
    required this.ups,
    required this.preview,
  });

  factory MemeModel.fromJson(Map<String, dynamic> json) {
    return MemeModel(
      postLink: json['postLink'] as String,
      subreddit: json['subreddit'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
      nsfw: json['nsfw'] as bool,
      spoiler: json['spoiler'] as bool,
      author: json['author'] as String,
      ups: json['ups'] as int,
      preview: List<String>.from(json['preview'] as List),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'postLink': postLink,
      'subreddit': subreddit,
      'title': title,
      'url': url,
      'nsfw': nsfw,
      'spoiler': spoiler,
      'author': author,
      'ups': ups,
      'preview': preview,
    };
  }
}