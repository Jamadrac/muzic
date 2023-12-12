class Song {
  final String title;
  final String description;
  final String url;
  final String coverurl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverurl,
  });

  static List<Song> songs = [
    Song(
      title: 'Song 1',
      description: 'Description 1',
      url: 'assets/music/Song1.mp3',
      coverurl: 'assets/images/album1.jpg', // Corrected path
    ),
    Song(
      title: 'Song 2',
      description: 'Description 2',
      url: 'assets/music/Song2.mp3',
      coverurl: 'assets/images/album2.jpg', // Corrected path
    ),
    Song(
      title: 'Song 3',
      description: 'Description 3',
      url: 'assets/music/Song3.mp3',
      coverurl: 'assets/images/album3.jpg', // Corrected path
    ),
  ];
}
