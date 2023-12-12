import 'package:file_picker/file_picker.dart';

class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });

  static List<Song> songs = [];

  static Future<void> initializeSongs() async {
    List<Song> loadedSongs = await _searchForMusic();
    songs = loadedSongs;
  }

  static Future<List<Song>> _searchForMusic() async {
    List<Song> songs = [];

    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.audio,
      allowMultiple: true,
    );

    if (result != null && result.files.isNotEmpty) {
      songs = result.files.where((file) => !_isACCFile(file.path)).map((file) {
        return Song(
          title: file.name ?? 'Unknown Title',
          description: 'Local audio file',
          url: file.path ?? '',
          coverUrl: 'path/to/your/default/cover/image.jpg',
        );
      }).toList();
    }

    return songs;
  }

  static bool _isACCFile(String filePath) {
    // Check if the file path ends with .acc
    return filePath.toLowerCase().endsWith('.aac');
  }
}
