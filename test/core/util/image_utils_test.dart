import 'package:flutter_test/flutter_test.dart';
import 'package:plaza/core/util/image_utils.dart';

void main() {
  group('ImageUtils', () {
    test('Should return a url without brackets and quotes', () {
      const imageUrl = '["https://example.com/image.jpg"]';
      final parsedUrl = ImageUtils.parseImageUrl(imageUrl);
      expect(parsedUrl, 'https://example.com/image.jpg');
    });
  });
}
