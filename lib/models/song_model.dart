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
      url: 'assets\music\Ada -  I Testify Lyrics (Lyric Video)(MP3_160K).mp3',
      coverurl: 'https://picsum.photos/250?image=9',
    ),
    Song(
      title: 'Song 2',
      description: 'Description 2',
      url:
          'assets\music\CHRIS SHALOM-POWER BELONGS TO YOU [HOMEMADE VIDEO](MP3_160K).mp3',
      coverurl: 'https://picsum.photos/250?image=9',
    ),
    Song(
      title: 'Song 3',
      description: 'Description 3',
      url: 'assets\music\Chileshe Bwalya - Nchingilileni(M4A_128K).m4a',
      coverurl: 'https://picsum.photos/250?image=9',
    ),
  ];
}
