class ImageUtils {
  static String parseImageUrl(String? imageUrl) {
    if (imageUrl == null) return '';

    final match = RegExp(r'https?://[^\s/$.?#].\S*').firstMatch(imageUrl);
    String parsedUrl = match?.group(0) ?? '';
    parsedUrl = parsedUrl.replaceAll(RegExp(r'[\[\]"]'), '');

    return parsedUrl;
  }
}
